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
				// Ŭ���̾�Ʈ ������ ���
				Socket socket = serverSocket.accept();
				
				// Ŭ���̾�Ʈ ���
				StockMarketService.registClient(new Client(socket, 10000));
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			// ���� �ݾ� ����
		}
	}
}
