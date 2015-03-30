package kr.co.kosta.study.moviereservation.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.tomcat.dbcp.dbcp.BasicDataSource;

/**
 * @author jdy 2015-03-30(최종수정)
 * 
 * ServletContextListener를 상속받은 Class로
 * Oracle6.jar libs의 BasicDataSource를 구현한다.
 */
class DataUtilListener implements ServletContextListener {
	private static DataUtilListener dataUtilListener;
	private BasicDataSource dataSource;
	
	static DataUtilListener getInstance() {
		return dataUtilListener;
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		ServletContext context = event.getServletContext();
		dataUtilListener = this;
		
		dataSource = new BasicDataSource();
		dataSource.setDriverClassName(context.getInitParameter("oracle_db_driver"));
		dataSource.setUrl(context.getInitParameter("oracle_db_url"));
		dataSource.setUsername(context.getInitParameter("oracle_db_username"));
		dataSource.setPassword(context.getInitParameter("oracle_db_password"));
		
		dataSource.setInitialSize(10);
		dataSource.setMaxIdle(3);
		dataSource.setMinIdle(3);
		dataSource.setMaxWait(2000);
	}
	
	public Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}
	
	public void close(Connection conn, Statement stmt) throws SQLException {
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}
	
	public void close(Connection conn, Statement stmt, ResultSet rset) throws SQLException {
		if (rset != null) rset.close();
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		try {
			dataSource.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
