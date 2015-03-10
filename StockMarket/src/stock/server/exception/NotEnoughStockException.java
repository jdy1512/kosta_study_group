package stock.server.exception;

public class NotEnoughStockException extends Exception {
	private String message;
	
	public NotEnoughStockException(String message) {
		this.message = message;
	}
	
	@Override
	public String getMessage() {
		return message;
	}
}
