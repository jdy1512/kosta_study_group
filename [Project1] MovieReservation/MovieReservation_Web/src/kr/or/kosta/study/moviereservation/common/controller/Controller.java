package kr.or.kosta.study.moviereservation.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.study.moviereservation.common.vo.AttributeAndView;

public interface Controller {

	public abstract AttributeAndView handle(HttpServletRequest request
					, HttpServletResponse response) throws Exception;
}
