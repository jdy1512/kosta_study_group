package stock.server.exception;

public class NotEnoughMoneyException extends Exception {
	private String message = "�������� �����մϴ�.";
	
	@Override
	public String getMessage() {
		return message;
	}
}
