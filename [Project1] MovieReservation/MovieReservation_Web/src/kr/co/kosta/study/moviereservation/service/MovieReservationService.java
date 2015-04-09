package kr.co.kosta.study.moviereservation.service;

import java.sql.SQLException;

import kr.co.kosta.study.moviereservation.dao.MovieDAO;
import kr.co.kosta.study.moviereservation.vo.Movie;

public class MovieReservationService {

	private static MovieReservationService instance = new MovieReservationService();
	private MovieDAO movieDAO = MovieDAO.getInstance();
	
	private MovieReservationService(){	}
	
	public static MovieReservationService getInstance(){
		return instance;
	}
	
	public int setMovieByAdministrator(Movie movie) throws SQLException{
		return movieDAO.insertMovieByAdministrator(movie);
	}
}
