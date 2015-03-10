package stock.market;

import java.util.ArrayList;

import stock.market.vo.Company;
import stock.server.StockMarketService;
import stock.theme.StockTheme;

public class StockMarketManager {
	public static final long STOCKPRICE_CHANGE_TIME = 5000;// 5��
	public static final long EVENT_OCCUR_TIME = STOCKPRICE_CHANGE_TIME * 5;
	public static final String[] THEME_LIST = { "����", "���", "����", "�Ǽ�", "����", "���", "����" };
	
	private static ArrayList<StockTheme> stockCompanyList = new ArrayList<StockTheme>();
	private static ArrayList<StockTheme> stockEventList = new ArrayList<StockTheme>();
	
	// �ֽ� ȸ�� ����Ʈ ���
	public static void registCompany(StockTheme st) {
		synchronized (stockCompanyList) {
			stockCompanyList.add(st);
		}
	}
	
	// �ֽ� ȸ�� ����
	public static void removeCompany(StockTheme st) {
		synchronized (stockCompanyList) {
			stockCompanyList.remove(st);
		}
	}
	
	// �̺�Ʈ ����Ʈ ���
	public static void registEvent(StockTheme st) {
		stockEventList.add(st);
	}
	
	// �׸��� ȸ�� ��ȸ
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
	
	// �̸����� ȸ�� ��ȸ
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

	// �ְ� ����
	public static void changeStockPrice() {
		synchronized (stockCompanyList) {
			for (StockTheme company : stockCompanyList) {
				// -1000 ~ 1000 ������ ���� (100����)
				int stockPrice = ((int) (Math.random() * 20)) * 100 - 1000;
				company.addStockPrice(stockPrice);
			}
		}
	}
	
	// �ܿ� �ֽķ�, �ְ� ��ü ��� - ���� Ȯ�ο�
	public static void printStockMarket() {
		synchronized (stockCompanyList) {
			for (StockTheme company : stockCompanyList) {
				System.out.print(company.toString() + "  ");
			}
			System.out.println();
		}
	}
	
	// �ܿ� �ֽķ�, �ְ� ��ü ����
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

	// �̺�Ʈ �߻�
	public static void occurEvent() {
		synchronized (stockCompanyList) {
			// �̺�Ʈ ����Ʈ���� �̺�Ʈ ���� ����
			int eventNo = (int) (Math.random() * stockEventList.size());
			// �׸� ����Ʈ���� �׸� ���� ����
			int themeNo = (int) (Math.random() * THEME_LIST.length);
			
			// ���õ� �̺�Ʈ�� �����ͼ� �׸� ���
			StockTheme event = stockEventList.get(eventNo);
			event.setTheme(THEME_LIST[themeNo]);
			
			// �̺�Ʈ ����
			event.eventEffect();
			
			// �̺�Ʈ �޽��� ��� - ���� Ȯ�ο�
			System.err.println(event.toString());
			
			// �̺�Ʈ �޽��� ����
			StockMarketService.sendMessageAllClients(event.toString());
		}
	}
}
