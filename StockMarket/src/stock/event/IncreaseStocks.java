package stock.event;

import java.util.ArrayList;

import stock.market.StockMarketManager;
import stock.theme.StockTheme;

public class IncreaseStocks extends StockTheme {
	private int increaseNum;

	public IncreaseStocks(String theme) {
		super(theme);
	}
	
	@Override
	public void eventEffect() {
		ArrayList<StockTheme> companyList = StockMarketManager.findCompanyWithTheme(getTheme());
		for (int i = 0; i < companyList.size(); i++) {
			StockTheme company = companyList.get(i);
			// 유통 주식량을 10 ~ 100 사이의 랜덤값으로 증가시킨다.
			increaseNum = (int) (Math.random() * 91) + 10;
			company.addStockNum(increaseNum);
		}
	}

	@Override
	public String toString() {
		return "[유통주 증가] " + getTheme() + " 업계 " + increaseNum + "주 증가";
	}
}
