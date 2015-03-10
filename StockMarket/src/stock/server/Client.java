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
				// enum ����Ʈ���� ��û�� ��
				for (StockMarketService.Request req : StockMarketService.Request.values()) {
					if (req.getName().equals(tag)) {
						// Ŭ���̾�Ʈ ��û���� ����
						StockMarketService.requestQuery(this, req, requestStr);
						break;
					}
				}
			}

			// ���� ���� -> �ֽ� ���� �ŵ�
			for (int i = 0; i < stockWallets.size(); i++) {
				StockWallet sw = stockWallets.get(i);
				String requestStr = StockMarketService.Request.SELL.getName() + ":" + sw.getCompanyName() + ":" + sw.getStockNum();
				// �ŵ� ��û ����
				StockMarketService.requestQuery(this, StockMarketService.Request.SELL, requestStr);
			}
			// ������ȸ ��û ����
			StockMarketService.requestQuery(this, StockMarketService.Request.WALLET, StockMarketService.Request.WALLET.getName());
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(socket.getInetAddress() + " Ŭ���̾�Ʈ ������ ����");
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

	// ������ ����
	public void addMoney(int money) {
		this.money += money;
	}

	// �ֽ����� ���
	public void registStockWallet(StockWallet stockWallet) {
		stockWallets.add(stockWallet);
	}
	
	// �ֽ����� ����
	public void removeStockWallet(StockWallet stockWallet) {
		stockWallets.remove(stockWallet);
	}
	
	// ȸ������� �ֽ����� ��ȸ
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
	
	// ������, �ֽ� ����
	public String readStockWallets() {
		String str = "";
		str += "������ = " + new DecimalFormat("#,###��").format(money) + " |  ";
		str += "���� �ֽ� = ";
		for (StockWallet sw : stockWallets) {
			str += sw.toString() + " ";
		}
		return str;
	}
	
	// �ֽ� �Ǹ�
	public String sellStockResult(String requestStr) throws Exception {
		String targetCompanyName = requestStr.split(":")[1];
		int sellStockNum = Integer.parseInt(requestStr.split(":")[2]);

		Company company = (Company) StockMarketManager.findCompanyWithName(targetCompanyName);
		
		// �ֽ� �Ǹ� �� �ݾ��� �����´�.
		int result = 0;
		try {
			result = company.sellStocks(sellStockNum, this);
		} catch (NotEnoughStockException nese) {
			return "����:" + company.getName() + ":" + nese.getMessage();
		}		
		return "����:" + company.getName() + ":" + result;
	}

	// �ֽ� ����
	public String buyStockResult(String requestStr) throws Exception {
		String targetCompanyName = requestStr.split(":")[1];
		int buyStockNum = Integer.parseInt(requestStr.split(":")[2]);

		Company company = (Company) StockMarketManager.findCompanyWithName(targetCompanyName);
		if (company == null) {
			return "����:ȸ�縦 ã���� �����ϴ�.";
		}
		
		// ������ �ֽ� ������ Ŭ���̾�Ʈ ������ �ְ�, ���������� ������ �ֽ� ������ ���Ϲ޴´�. ���н� -1
		int result = 0;
		try {
			result = company.buyStocks(buyStockNum, this);
		} catch (NotEnoughStockException nese) {
			return "����:" + company.getName() + ":" + nese.getMessage();
		} catch (NotEnoughMoneyException neme) {
			return "����:" + company.getName() + ":" + neme.getMessage();
		}
		return "����:" + company.getName() + ":" + result;
	}
}