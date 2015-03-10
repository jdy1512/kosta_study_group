package stock.event;

import java.util.ArrayList;

import stock.market.StockMarketManager;
import stock.theme.StockTheme;

public class RuinCompany extends StockTheme {

	public RuinCompany(String theme) {
		super(theme);
	}
	
	@Override
	public void eventEffect() {
		ArrayList<StockTheme> companyList = StockMarketManager.findCompanyWithTheme(getTheme());
		for (int i = 0; i < companyList.size(); i++) {
			StockTheme company = companyList.get(i);
			StockMarketManager.removeCompany(company);
		}
	}

	@Override
	public String toString() {
		return "[파산] " + getTheme() + " 업계 파산";
	}
}
