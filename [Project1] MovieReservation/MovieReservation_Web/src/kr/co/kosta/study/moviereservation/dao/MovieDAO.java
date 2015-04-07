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
		
//		final String sql = "insert into movie(movie_id,genre,name,director,actor,start_date,watch_grade_id,running_time,synopsis,imagePath) values("
//				+ "decode(count(movie_id),0,M1,concat(M,max(substr(movie_id,2))+1)),"
//				+ "액션/모험/판타지/SF,"
//				+ "어벤져스: 에이지 오브 울트론,"
//				+ "조스웨던,"
//				+ "로버트 다우니 주니어(토니 스타크/아이언맨)^크리스 헴스워스^스칼렛 요한슨,"
//				+ "20150423,"
//				+ "select watch_grade_id from watch_grade where watch_grade_name=15세이상관람가,"
//				+ "141분,"
//				+ "어벤져스는 끝났다! 희망은 없다! 어벤져스를 위협하는 최강의 적 ‘울트론’의 등장 평화로 가는 길은 단 하나, 인류의 멸종이라고 믿는 ‘울트론’과 사상 최대의 전쟁이 시작된다!,"
//				+ "C:\\Users\\KOSTA_03_001_\\Desktop\\kosta_study_group\\[Project1] MovieReservation\\movie image\\movie0001.png)";
	}

	public int insertMovieByAdministrator(Movie movie) throws SQLException {
		final String sql = "insert into movie(movie_id,genre_id,name,director,actor,start_date,watch_grade_id,running_time,synopsis,imagePath) values("
				+ "decode(count(movie_id),0,M1,concat(M,max(substr(movie_id,2))+1)),"
				+ "?,?,?,?,?,"
				+ "select watch_grade_id from watch_grade where watch_grade_name=?,"
				+ "?,?,?)";
		Connection conn = util.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, movie.getGenre());
		pstmt.setString(2, movie.getName());
		pstmt.setString(3, movie.getDirector());
		pstmt.setString(4, movie.getActor());
		pstmt.setString(5, movie.getPlayDate());
		pstmt.setString(6, movie.getWatchGrade());
		pstmt.setString(7, movie.getViewingTime());
		pstmt.setString(8, movie.getSynopsis());
		pstmt.setString(9, movie.getImagePath());
		
		int result = pstmt.executeUpdate();
		
		util.close(conn, pstmt);
		
		return result;
	}
}
