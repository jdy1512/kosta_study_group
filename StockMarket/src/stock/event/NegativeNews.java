package stock.event;

import java.util.ArrayList;

import stock.market.StockMarketManager;
import stock.theme.StockTheme;

public class NegativeNews extends StockTheme {

	public NegativeNews(String theme) {
		super(theme);
	}

	@Override
	public void eventEffect() {
		ArrayList<StockTheme> companyList = StockMarketManager.findCompanyWithTheme(getTheme());
		for (int i = 0; i < companyList.size(); i++) {
			// final로 선언해야 inner클래스에서 쓸수있다.
			final StockTheme company = companyList.get(i);
			
			new Thread(new Runnable() {
				@Override
				public void run() {
					try {
						company.addStockPrice(-1000);
						Thread.sleep(StockMarketManager.STOCKPRICE_CHANGE_TIME);
						company.addStockPrice(-2000);
						Thread.sleep(StockMarketManager.STOCKPRICE_CHANGE_TIME);
						company.addStockPrice(-1000);
						Thread.sleep(StockMarketManager.STOCKPRICE_CHANGE_TIME);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}).start();
		}
	}

	@Override
	public String toString() {
		return "[뉴스] " + getTheme() + " 업계 하락세";
	}
}
