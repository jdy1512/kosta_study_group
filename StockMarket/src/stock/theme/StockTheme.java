package stock.theme;

public abstract class StockTheme {
	private String theme;

	public StockTheme(String theme) {
		this.theme = theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getTheme() {
		return theme;
	}

	// Company Ŭ���� �������̵��� ���� �޼ҵ� ����
	public void addStockPrice(int stockPrice) {
	}

	public void setStockPrice(int stockPrice) {
	}
	
	public void addStockNum(int stockNum) {
	}

	// Event Ŭ������ �������̵��� ���� �޼ҵ� ����
	public void eventEffect() {
	}
}
