package stock.market.thread;

import stock.market.StockMarketManager;
import stock.server.StockMarketService;



public class EventThread extends Thread {
	private long delay;
	
	public EventThread(long delay) {
		this.delay = delay;
	}

	@Override
	public void run() {
		while (StockMarketService.isRunning()) {
			try {
				sleep(delay);
				StockMarketManager.occurEvent();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
