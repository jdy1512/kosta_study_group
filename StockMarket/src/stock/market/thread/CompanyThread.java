package stock.market.thread;

import stock.market.StockMarketManager;
import stock.server.StockMarketService;



public class CompanyThread extends Thread {
	private long delay;
	
	public CompanyThread(long delay) {
		this.delay = delay;
	}

	@Override
	public void run() {
		while (StockMarketService.isRunning()) {
			try {
				StockMarketManager.printStockMarket();
				sleep(delay);
				StockMarketManager.changeStockPrice();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
