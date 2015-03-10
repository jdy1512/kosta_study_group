package stock.market;

import stock.event.AddCompany;
import stock.event.IncreaseStocks;
import stock.event.NegativeNews;
import stock.event.PositiveNews;
import stock.event.RuinCompany;
import stock.market.thread.CompanyThread;
import stock.market.thread.EventThread;
import stock.market.vo.Company;
import stock.server.StockServer;
import stock.server.StockMarketService;

public class StockMarket {
	
	public static void main(String[] args) {
		//---------------------- PART 1 ----------------------
		
		// 주식 회사 생성
		StockMarketManager.registCompany(new Company("보험", "사망생명"));
		StockMarketManager.registCompany(new Company("통신", "단절통신"));
		StockMarketManager.registCompany(new Company("금융", "파산은행"));
		StockMarketManager.registCompany(new Company("건설", "부실건설"));
		StockMarketManager.registCompany(new Company("전자", "석기전자"));
		StockMarketManager.registCompany(new Company("농업", "농약조합"));
		StockMarketManager.registCompany(new Company("수산", "침몰조선"));
		
		// 이벤트 생성
		StockMarketManager.registEvent(new PositiveNews(null));
		StockMarketManager.registEvent(new NegativeNews(null));
		StockMarketManager.registEvent(new RuinCompany(null));
		StockMarketManager.registEvent(new IncreaseStocks(null));
		StockMarketManager.registEvent(new AddCompany(null));
		
		// STOCKPRICE_CHANGE_TIME 주기로 주가 변동
		new CompanyThread(StockMarketManager.STOCKPRICE_CHANGE_TIME).start();

		// EVENT_OCCUR_TIME 주기로 이벤트 발생
		new EventThread(StockMarketManager.EVENT_OCCUR_TIME).start();
		
		
		//---------------------- PART 2 ----------------------
		
		// 게임 서버 실행
		new StockServer().start();
		
		// GAME_TIME 후 모든 Thread 종료
		try {
			Thread.sleep(StockMarketService.GAME_TIME);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		StockMarketService.setRunning(false);
		System.out.println("---------------------------------- 게임 종료 ----------------------------------");
	}
}
