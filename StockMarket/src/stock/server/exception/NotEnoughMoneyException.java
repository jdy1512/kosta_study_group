package stock.server.exception;

public class NotEnoughMoneyException extends Exception {
	private String message = "소지금이 부족합니다.";
	
	@Override
	public String getMessage() {
		return message;
	}
}
