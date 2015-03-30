package kr.co.kosta.study.moviereservation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import kr.co.kosta.study.moviereservation.util.UtilManager;
import kr.co.kosta.study.moviereservation.vo.Movie;

/**
 * @author jdy 2015-03-30(최종수정)
 *
 * '영화' 관리를 위한 Singleton Class.
 * DataBase 접속을 위한 DataAccessObject.
 */
public class MovieDAO {
	private static MovieDAO movieDAO;
	private UtilManager util;

	public static MovieDAO getInstance() {
		if (movieDAO == null) {
			movieDAO = new MovieDAO();
		}
		return movieDAO;
	}

	public MovieDAO() {
		util = UtilManager.getInstance();
	}

	public int insertMovieByAdministrator(Movie movie) throws SQLException {
		final String sql = "insert into movie values("
				+ "decode(count(movie_id),0,M1,concat(M,max(substr(movie_id,2))+1))"
				+ ",?,?,?,?,?,?,?)";
		Connection conn = util.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, movie.getName());
		pstmt.setString(2, movie.getDirector());
		pstmt.setString(3, movie.getActor());
		pstmt.setDate(4, (java.sql.Date) movie.getPlayDate());
		pstmt.setString(5, movie.getViewingTime());
		pstmt.setString(6, movie.getSynopsis());
		pstmt.setString(7, movie.getImagePath());
		
		int result = pstmt.executeUpdate();
		
		util.close(conn, pstmt);
		
		return result;
	}
}
