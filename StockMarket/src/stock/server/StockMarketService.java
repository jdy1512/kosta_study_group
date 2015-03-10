package stock.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;

import stock.market.StockMarketManager;

public class StockMarketService {
	public static final long GAME_TIME = 1000 * 60 * 10;// 10분
	public static final int PORT = 12345;// 접속 port
	// 클라이언트 요청을 구분하기 위한 열거변수
	public static enum Request {
		WALLET("지갑 조회"), MARKET("주식시장 조회"), SELL("매도"), BUY("매수");
		
		private final String name;
		
		private Request(String name) {
			this.name = name;
		}
		
		public String getName() {
			return name;
		}
	}
	// 게임의 실행 여부를 검사하는 flag 값
	private static boolean isRunning = true;
	
	private static ArrayList<Client> clients = new ArrayList<Client>();

	public static boolean isRunning() {
		return isRunning;
	}
	
	public static void setRunning(boolean flg) {
		isRunning = flg;
	}
	
	// 클라이언트 등록
	public static void registClient(Client client) {
		clients.add(client);
	}
	
	// 클라이언트 요청
	public static void requestQuery(Client client, Request req, String requestStr) throws Exception {
		if (req == Request.WALLET) {
			responseMessage(client.getPrintWriter(), client.readStockWallets());
		} else if (req == Request.MARKET) {
			responseMessage(client.getPrintWriter(), StockMarketManager.readStockMarket());
		} else if (req == Request.SELL) {
			responseMessage(client.getPrintWriter(), client.sellStockResult(requestStr));
		} else if (req == Request.BUY) {
			responseMessage(client.getPrintWriter(), client.buyStockResult(requestStr));
		}
	}

	// 응답 메시지 전송
	private static void responseMessage(PrintWriter pw, String message) throws IOException {
		pw.println(message);
	}
	
	// 모든 클라이언트에게 메시지
	public static void sendMessageAllClients(String message) {
		for (int i = 0; i < clients.size(); i++) {
			clients.get(i).getPrintWriter().println(message);
		}
	}
	
}
