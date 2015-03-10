package stock.market;

import java.util.ArrayList;

import stock.market.vo.Company;
import stock.server.StockMarketService;
import stock.theme.StockTheme;

public class StockMarketManager {
	public static final long STOCKPRICE_CHANGE_TIME = 5000;// 5초
	public static final long EVENT_OCCUR_TIME = STOCKPRICE_CHANGE_TIME * 5;
	public static final String[] THEME_LIST = { "보험", "통신", "금융", "건설", "전자", "농업", "수산" };
	
	private static ArrayList<StockTheme> stockCompanyList = new ArrayList<StockTheme>();
	private static ArrayList<StockTheme> stockEventList = new ArrayList<StockTheme>();
	
	// 주식 회사 리스트 등록
	public static void registCompany(StockTheme st) {
		synchronized (stockCompanyList) {
			stockCompanyList.add(st);
		}
	}
	
	// 주식 회사 삭제
	public static void removeCompany(StockTheme st) {
		synchronized (stockCompanyList) {
			stockCompanyList.remove(st);
		}
	}
	
	// 이벤트 리스트 등록
	public static void registEvent(StockTheme st) {
		stockEventList.add(st);
	}
	
	// 테마로 회사 조회
	public static ArrayList<StockTheme> findCompanyWithTheme(String theme) {
		synchronized (stockCompanyList) {
			ArrayList<StockTheme> companyList = new ArrayList<StockTheme>();
			for (int i = 0; i < stockCompanyList.size(); i++) {
				if (theme.equals(stockCompanyList.get(i).getTheme())) {
					companyList.add(stockCompanyList.get(i));
				}
			}
			return companyList;
		}
	}
	
	// 이름으로 회사 조회
	public static StockTheme findCompanyWithName(String name) {
		synchronized (stockCompanyList) {
			StockTheme company = null;
			for (int i = 0; i < stockCompanyList.size(); i++) {
				if (name.equals(((Company) stockCompanyList.get(i)).getName())) {
					company = stockCompanyList.get(i);
					break;
				}
			}
			return company;
		}
	}

	// 주가 변동
	public static void changeStockPrice() {
		synchronized (stockCompanyList) {
			for (StockTheme company : stockCompanyList) {
				// -1000 ~ 1000 사이의 난수 (100단위)
				int stockPrice = ((int) (Math.random() * 20)) * 100 - 1000;
				company.addStockPrice(stockPrice);
			}
		}
	}
	
	// 잔여 주식량, 주가 전체 출력 - 서버 확인용
	public static void printStockMarket() {
		synchronized (stockCompanyList) {
			for (StockTheme company : stockCompanyList) {
				System.out.print(company.toString() + "  ");
			}
			System.out.println();
		}
	}
	
	// 잔여 주식량, 주가 전체 리턴
	public static String readStockMarket() {
		synchronized (stockCompanyList) {
			String str = "";
			for (StockTheme company : stockCompanyList) {
				str += company.toString() + "  ";
			}
			str += "\n";
			return str;
		}
	}

	// 이벤트 발생
	public static void occurEvent() {
		synchronized (stockCompanyList) {
			// 이벤트 리스트에서 이벤트 랜덤 선택
			int eventNo = (int) (Math.random() * stockEventList.size());
			// 테마 리스트에서 테마 랜덤 선택
			int themeNo = (int) (Math.random() * THEME_LIST.length);
			
			// 선택된 이벤트를 가져와서 테마 등록
			StockTheme event = stockEventList.get(eventNo);
			event.setTheme(THEME_LIST[themeNo]);
			
			// 이벤트 구현
			event.eventEffect();
			
			// 이벤트 메시지 출력 - 서버 확인용
			System.err.println(event.toString());
			
			// 이벤트 메시지 전송
			StockMarketService.sendMessageAllClients(event.toString());
		}
	}
}
