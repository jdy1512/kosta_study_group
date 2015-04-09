package kr.co.kosta.study.moviereservation.service;

import kr.co.kosta.study.moviereservation.dao.MovieDAO;

public class MovieReservationService {

	private static MovieReservationService instance = new MovieReservationService();
	private MovieDAO movieDao = MovieDAO.getInstance();
	
	private MovieReservationService(){	}
	
	public static MovieReservationService getInstance(){
		return instance;
	}
}
