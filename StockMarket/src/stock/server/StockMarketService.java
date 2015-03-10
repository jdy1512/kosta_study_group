package stock.server;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;

import stock.market.StockMarketManager;

public class StockMarketService {
	public static final long GAME_TIME = 1000 * 60 * 10;// 10��
	public static final int PORT = 12345;// ���� port
	// Ŭ���̾�Ʈ ��û�� �����ϱ� ���� ���ź���
	public static enum Request {
		WALLET("���� ��ȸ"), MARKET("�ֽĽ��� ��ȸ"), SELL("�ŵ�"), BUY("�ż�");
		
		private final String name;
		
		private Request(String name) {
			this.name = name;
		}
		
		public String getName() {
			return name;
		}
	}
	// ������ ���� ���θ� �˻��ϴ� flag ��
	private static boolean isRunning = true;
	
	private static ArrayList<Client> clients = new ArrayList<Client>();

	public static boolean isRunning() {
		return isRunning;
	}
	
	public static void setRunning(boolean flg) {
		isRunning = flg;
	}
	
	// Ŭ���̾�Ʈ ���
	public static void registClient(Client client) {
		clients.add(client);
	}
	
	// Ŭ���̾�Ʈ ��û
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

	// ���� �޽��� ����
	private static void responseMessage(PrintWriter pw, String message) throws IOException {
		pw.println(message);
	}
	
	// ��� Ŭ���̾�Ʈ���� �޽���
	public static void sendMessageAllClients(String message) {
		for (int i = 0; i < clients.size(); i++) {
			clients.get(i).getPrintWriter().println(message);
		}
	}
	
}
