package stock.server;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.text.DecimalFormat;
import java.util.ArrayList;

import stock.market.StockMarketManager;
import stock.market.vo.Company;
import stock.server.exception.NotEnoughMoneyException;
import stock.server.exception.NotEnoughStockException;

public class Client extends Thread {
	private int money;
	private ArrayList<StockWallet> stockWallets;

	private Socket socket;
	private BufferedReader br;
	private PrintWriter pw;

	public Client(Socket socket, int money) {
		stockWallets = new ArrayList<StockWallet>();
		this.socket = socket;
		this.money = money;
		this.start();
	}

	public BufferedReader getBufferedReader() {
		return br;
	}

	public PrintWriter getPrintWriter() {
		return pw;
	}

	@Override
	public void run() {
		try {
			br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			pw = new PrintWriter(socket.getOutputStream(), true);
			while (StockMarketService.isRunning()) {
				String requestStr = br.readLine();
				String tag = null;
				if (requestStr != null)
					tag = requestStr.split(":")[0];
				// enum 리스트에서 요청값 비교
				for (StockMarketService.Request req : StockMarketService.Request.values()) {
					if (req.getName().equals(tag)) {
						// 클라이언트 요청사항 전달
						StockMarketService.requestQuery(this, req, requestStr);
						break;
					}
				}
			}

			// 게임 종료 -> 주식 전량 매도
			for (int i = 0; i < stockWallets.size(); i++) {
				StockWallet sw = stockWallets.get(i);
				String requestStr = StockMarketService.Request.SELL.getName() + ":" + sw.getCompanyName() + ":" + sw.getStockNum();
				// 매도 요청 전달
				StockMarketService.requestQuery(this, StockMarketService.Request.SELL, requestStr);
			}
			// 지갑조회 요청 전달
			StockMarketService.requestQuery(this, StockMarketService.Request.WALLET, StockMarketService.Request.WALLET.getName());
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(socket.getInetAddress() + " 클라이언트 비정상 종료");
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (pw != null) {
				pw.close();
			}
		}
	}
	
	public int getMoney() {
		return money;
	}

	// 소지금 변경
	public void addMoney(int money) {
		this.money += money;
	}

	// 주식지갑 등록
	public void registStockWallet(StockWallet stockWallet) {
		stockWallets.add(stockWallet);
	}
	
	// 주식지갑 제거
	public void removeStockWallet(StockWallet stockWallet) {
		stockWallets.remove(stockWallet);
	}
	
	// 회사명으로 주식지갑 조회
	public StockWallet findStockWalletByName(String companyName) {
		StockWallet stockWallet = null;
		for (int i = 0; i < stockWallets.size(); i++) {
			if (companyName.equals(stockWallets.get(i).getCompanyName())) {
				stockWallet = stockWallets.get(i);
				break;
			}
		}
		return stockWallet;
	}
	
	// 소지금, 주식 리턴
	public String readStockWallets() {
		String str = "";
		str += "소지금 = " + new DecimalFormat("#,###원").format(money) + " |  ";
		str += "소유 주식 = ";
		for (StockWallet sw : stockWallets) {
			str += sw.toString() + " ";
		}
		return str;
	}
	
	// 주식 판매
	public String sellStockResult(String requestStr) throws Exception {
		String targetCompanyName = requestStr.split(":")[1];
		int sellStockNum = Integer.parseInt(requestStr.split(":")[2]);

		Company company = (Company) StockMarketManager.findCompanyWithName(targetCompanyName);
		
		// 주식 판매 후 금액을 가져온다.
		int result = 0;
		try {
			result = company.sellStocks(sellStockNum, this);
		} catch (NotEnoughStockException nese) {
			return "실패:" + company.getName() + ":" + nese.getMessage();
		}		
		return "성공:" + company.getName() + ":" + result;
	}

	// 주식 구매
	public String buyStockResult(String requestStr) throws Exception {
		String targetCompanyName = requestStr.split(":")[1];
		int buyStockNum = Integer.parseInt(requestStr.split(":")[2]);

		Company company = (Company) StockMarketManager.findCompanyWithName(targetCompanyName);
		if (company == null) {
			return "실패:회사를 찾을수 없습니다.";
		}
		
		// 구매할 주식 수량과 클라이언트 정보를 주고, 성공적으로 구매한 주식 수량을 리턴받는다. 실패시 -1
		int result = 0;
		try {
			result = company.buyStocks(buyStockNum, this);
		} catch (NotEnoughStockException nese) {
			return "실패:" + company.getName() + ":" + nese.getMessage();
		} catch (NotEnoughMoneyException neme) {
			return "실패:" + company.getName() + ":" + neme.getMessage();
		}
		return "성공:" + company.getName() + ":" + result;
	}
}