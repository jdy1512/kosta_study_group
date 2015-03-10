package stock.market.vo;

import stock.server.Client;
import stock.server.StockWallet;
import stock.server.exception.NotEnoughMoneyException;
import stock.server.exception.NotEnoughStockException;
import stock.theme.StockTheme;

public class Company extends StockTheme {
	// ȸ���
	private String name;
	// �ֽ� ����
	private int stockNum = 10;
	// �ְ�
	private int stockPrice = 500;

	public Company(String theme, String name) {
		super(theme);
		this.name = name;
	}

	public Company(String theme, String name, int stockNum, int stockPrice) {
		super(theme);
		this.name = name;
		this.stockNum = stockNum;
		this.stockPrice = stockPrice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStockNum() {
		return stockNum;
	}

	public void setStockNum(int stockNum) {
		this.stockNum = stockNum;
	}
	
	@Override
	public void addStockNum(int stockNum) {
		synchronized (this) {
			this.stockNum += stockNum;
			if (this.stockNum < 0) {
				this.stockNum = 0;
			}
		}
	}
	
	public int buyStocks(int stockNum, Client client) throws NotEnoughStockException, NotEnoughMoneyException {
		synchronized (this) {
			// ������ �˻�
			if (stockPrice * stockNum <= client.getMoney()) {
				this.stockNum -= stockNum;
				// �ֽ� ���� �˻�
				if (stockNum >= 0) {
					// �ֽ� ���ż��� - ������ ����, StockWallet ����
					client.addMoney(-(stockPrice * stockNum));
					StockWallet stockWallet = client.findStockWalletByName(getName());
					if (stockWallet != null) {
						stockWallet.setStockNum(stockWallet.getStockNum() + stockNum);
					} else {
						stockWallet = new StockWallet(getTheme(), getName(), stockNum);
						client.registStockWallet(stockWallet);
					}
					return stockNum;
				} else {
					// �ֽ� ���Ž��� - �ֽ� ���� ����
					this.stockNum += stockNum;
					throw new NotEnoughStockException("������ �ֽ� ������ �����մϴ�.");
				}
			} else {
				// �ֽ� ���Ž��� - ������ ����
				throw new NotEnoughMoneyException();
			}
		}// end of sync
	}
	
	public int sellStocks(int stockNum, Client client) throws NotEnoughStockException {
		synchronized (this) {
			StockWallet stockWallet = client.findStockWalletByName(getName());
			// Ŭ���̾�Ʈ�� �����ϰ��ִ� StockWallet Ŭ�������� �ֽ� �������� �Ǹ��ϱ� ������� �˻��Ѵ�.
			if (stockNum <= stockWallet.getStockNum()) {
				this.stockNum += stockNum;
				stockWallet.setStockNum(stockWallet.getStockNum() - stockNum);
				if (stockWallet.getStockNum() == 0)
					client.removeStockWallet(stockWallet);
				client.addMoney(stockPrice * stockNum);
				return stockPrice * stockNum;
			} else {
				// �ֽ� �Ǹ� ���� - �ֽ� ���� ����
				throw new NotEnoughStockException("�Ǹ��� �ֽ� ������ �����մϴ�.");
			}
		}
	}
	
	public int getStockPrice() {
		return stockPrice;
	}

	@Override
	public void setStockPrice(int stockPrice) {
		this.stockPrice = stockPrice;
	}

	@Override
	public void addStockPrice(int stockPrice) {
		synchronized (this) {
			this.stockPrice += stockPrice;
			if (this.stockPrice < 0) {
				this.stockPrice = 0;
			}
		}
	}

	@Override
	public String toString() {
		return "(" + getTheme() + ")" + name + "[" + stockNum + "��, " + stockPrice + "��]";
	}
	
}
