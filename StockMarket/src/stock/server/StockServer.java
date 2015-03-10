package stock.server;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class StockServer extends Thread {
	private ServerSocket serverSocket;

	@Override
	public void run() {
		try {
			serverSocket = new ServerSocket(StockMarketService.PORT);
			
			while (StockMarketService.isRunning()) {
				// 클라이언트 접속을 대기
				Socket socket = serverSocket.accept();
				
				// 클라이언트 등록
				StockMarketService.registClient(new Client(socket, 10000));
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			// 최종 금액 전송
		}
	}
}
