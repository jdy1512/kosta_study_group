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
			// ���� �ֽķ��� 10 ~ 100 ������ ���������� ������Ų��.
			increaseNum = (int) (Math.random() * 91) + 10;
			company.addStockNum(increaseNum);
		}
	}

	@Override
	public String toString() {
		return "[������ ����] " + getTheme() + " ���� " + increaseNum + "�� ����";
	}
}
