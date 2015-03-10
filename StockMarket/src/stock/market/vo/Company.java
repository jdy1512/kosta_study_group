package stock.market.vo;

import stock.server.Client;
import stock.server.StockWallet;
import stock.server.exception.NotEnoughMoneyException;
import stock.server.exception.NotEnoughStockException;
import stock.theme.StockTheme;

public class Company extends StockTheme {
	// 회사명
	private String name;
	// 주식 수량
	private int stockNum = 10;
	// 주가
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
			// 소지금 검사
			if (stockPrice * stockNum <= client.getMoney()) {
				this.stockNum -= stockNum;
				// 주식 수량 검사
				if (stockNum >= 0) {
					// 주식 구매성공 - 소지금 차감, StockWallet 갱신
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
					// 주식 구매실패 - 주식 수량 부족
					this.stockNum += stockNum;
					throw new NotEnoughStockException("구매할 주식 수량이 부족합니다.");
				}
			} else {
				// 주식 구매실패 - 소지금 부족
				throw new NotEnoughMoneyException();
			}
		}// end of sync
	}
	
	public int sellStocks(int stockNum, Client client) throws NotEnoughStockException {
		synchronized (this) {
			StockWallet stockWallet = client.findStockWalletByName(getName());
			// 클라이언트가 소지하고있는 StockWallet 클래스에서 주식 보유량이 판매하기 충분한지 검사한다.
			if (stockNum <= stockWallet.getStockNum()) {
				this.stockNum += stockNum;
				stockWallet.setStockNum(stockWallet.getStockNum() - stockNum);
				if (stockWallet.getStockNum() == 0)
					client.removeStockWallet(stockWallet);
				client.addMoney(stockPrice * stockNum);
				return stockPrice * stockNum;
			} else {
				// 주식 판매 실패 - 주식 수량 부족
				throw new NotEnoughStockException("판매할 주식 수량이 부족합니다.");
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
		return "(" + getTheme() + ")" + name + "[" + stockNum + "주, " + stockPrice + "원]";
	}
	
}
