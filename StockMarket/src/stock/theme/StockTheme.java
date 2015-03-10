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

	// Company 클래스 오버라이딩을 위한 메소드 선언
	public void addStockPrice(int stockPrice) {
	}

	public void setStockPrice(int stockPrice) {
	}
	
	public void addStockNum(int stockNum) {
	}

	// Event 클래스들 오버라이딩을 위한 메소드 선언
	public void eventEffect() {
	}
}
