package kr.co.kosta.study.moviereservation.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kosta.study.moviereservation.service.MovieReservationService;
import kr.co.kosta.study.moviereservation.vo.Movie;
import kr.or.kosta.study.moviereservation.common.controller.Controller;
import kr.or.kosta.study.moviereservation.common.vo.AttributeAndView;

public class InsertMovieController implements Controller{

	@Override
	public AttributeAndView handle(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String genre = request.getParameter("genre");
		String name = request.getParameter("name");
		String director = request.getParameter("director");
		String actor = request.getParameter("actor");
		String playDate = request.getParameter("palyDate");
		String watchGrade = request.getParameter("watchGrade");
		String viewingTime = request.getParameter("viewingTime");
		String synopsis = request.getParameter("synopsis");
		String imagePath = request.getParameter("imagePath");
		
		try{
			MovieReservationService.getInstance().setMovie(new Movie(genre
						, name, director, actor, playDate, watchGrade
						, viewingTime, synopsis, imagePath)); 
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return new AttributeAndView(true, "/MovieReservation_Web/MovieFrontController?"
				+ "command=admin_insert_movie");
	}

	
}
