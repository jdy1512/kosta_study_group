package kr.or.kosta.study.moviereservation.common.controller;

import kr.co.kosta.study.moviereservation.admin.InsertMovieController;
import kr.co.kosta.study.moviereservation.admin.InsertSuccessController;

public class HandlerMapping {

	public static Controller getController(String command){
		Controller controller = null;
		if(command.equals("admin_insert_movie")){
			controller = new InsertMovieController();
		}else if(command.equals("admin_insert_movie_success")){
			controller = new InsertSuccessController();
		}
		return controller;
	}
}
