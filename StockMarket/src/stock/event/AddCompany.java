package stock.event;

import stock.market.StockMarketManager;
import stock.market.vo.Company;
import stock.theme.StockTheme;

public class AddCompany extends StockTheme {
	private static final String[] companyNameList = { "ū��", "����", "�׷�", "����", "����", "����", "���" };
	
	private int nameCnt;
	private int companyNo = 1;
	private int stockNumRan;
	private int stockPriceRan;

	public AddCompany(String theme) {
		super(theme);
	}
	
	@Override
	public void eventEffect() {
		stockNumRan = ((int) (Math.random() * 10 + 1) * 10);
		stockPriceRan = ((int) (Math.random() * 16 + 5)) * 100;
		
		if(nameCnt == companyNameList.length) {
			nameCnt = 0;
			companyNo++;
		}

		Company company = new Company(getTheme(), getTheme() + companyNameList[nameCnt++] + companyNo);
		company.setStockNum(stockNumRan);
		company.setStockPrice(stockPriceRan);
		StockMarketManager.registCompany(company);
	}

	@Override
	public String toString() {
		return "[�űԻ����] (" + getTheme() + ") " + (getTheme() + companyNameList[nameCnt - 1]) + companyNo + " ����";
	}
}
