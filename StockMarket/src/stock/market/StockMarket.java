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
		
		// �ֽ� ȸ�� ����
		StockMarketManager.registCompany(new Company("����", "�������"));
		StockMarketManager.registCompany(new Company("���", "�������"));
		StockMarketManager.registCompany(new Company("����", "�Ļ�����"));
		StockMarketManager.registCompany(new Company("�Ǽ�", "�νǰǼ�"));
		StockMarketManager.registCompany(new Company("����", "��������"));
		StockMarketManager.registCompany(new Company("���", "�������"));
		StockMarketManager.registCompany(new Company("����", "ħ������"));
		
		// �̺�Ʈ ����
		StockMarketManager.registEvent(new PositiveNews(null));
		StockMarketManager.registEvent(new NegativeNews(null));
		StockMarketManager.registEvent(new RuinCompany(null));
		StockMarketManager.registEvent(new IncreaseStocks(null));
		StockMarketManager.registEvent(new AddCompany(null));
		
		// STOCKPRICE_CHANGE_TIME �ֱ�� �ְ� ����
		new CompanyThread(StockMarketManager.STOCKPRICE_CHANGE_TIME).start();

		// EVENT_OCCUR_TIME �ֱ�� �̺�Ʈ �߻�
		new EventThread(StockMarketManager.EVENT_OCCUR_TIME).start();
		
		
		//---------------------- PART 2 ----------------------
		
		// ���� ���� ����
		new StockServer().start();
		
		// GAME_TIME �� ��� Thread ����
		try {
			Thread.sleep(StockMarketService.GAME_TIME);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		StockMarketService.setRunning(false);
		System.out.println("---------------------------------- ���� ���� ----------------------------------");
	}
}
