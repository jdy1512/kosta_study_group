package kr.co.kosta.study.moviereservation.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author jdy 2015-03-30(최종수정)
 * 
 * Singleton Class인 UtilManager를 통해 
 * 여러 Listener의 객체들을 모아서 관리하고, 각 서블릿이 공유할 메소드를 제공한다.
 */
public class UtilManager {
	private static UtilManager dataUtil = new UtilManager();
	
	// 각종 Listener 관리
	private DataUtilListener dataUtilListener;
	
	private UtilManager() {
		dataUtilListener = DataUtilListener.getInstance();
	}
	
	public static UtilManager getInstance() {
		return dataUtil;
	}
	

	// ------------------------- DataUtilListener -------------------------
	
	/**
	 * @return : BasicDataSource의 ConnectionPool로부터 Connection 객체를 가져온다.
	 * @throws SQLException
	 */
	public Connection getConnection() throws SQLException {
		return dataUtilListener.getConnection();
	}
	
	/**
	 * @param conn : 반환할 BasicDataSource의 Connection
	 * @param stmt : Close 할 Statement 객체
	 * @throws SQLException
	 */
	public void close(Connection conn, Statement stmt) throws SQLException {
		dataUtilListener.close(conn, stmt);
	}
	
	/**
	 * @param conn : 반환할 BasicDataSource의 Connection
	 * @param stmt : Close 할 Statement 객체
	 * @param rset : Close 할 ResultSet 객체
	 * @throws SQLException
	 */
	public void close(Connection conn, Statement stmt, ResultSet rset) throws SQLException {
		dataUtilListener.close(conn, stmt, rset);
	}
	
	// ------------------------- End Of DataUtilListener -------------------------
	
}
