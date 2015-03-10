package stock.server;

public class StockWallet implements Comparable<Integer> {
	private String theme;
	private String companyName;
	private int stockNum;

	public StockWallet(String theme, String companyName, int stockNum) {
		this.theme = theme;
		this.companyName = companyName;
		this.stockNum = stockNum;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public int getStockNum() {
		return stockNum;
	}

	public void setStockNum(int stockNum) {
		this.stockNum = stockNum;
	}

	@Override
	public String toString() {
		return "(" + theme + ")" + companyName + ":" + stockNum;
	}

	@Override
	public int compareTo(Integer i) {
		return stockNum > i ? 1 : 0;
	}
}