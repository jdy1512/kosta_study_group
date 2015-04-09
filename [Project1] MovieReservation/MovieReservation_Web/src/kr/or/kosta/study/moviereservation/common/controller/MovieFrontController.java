package kr.or.kosta.study.moviereservation.common.controller;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.study.moviereservation.common.vo.AttributeAndView;

public class MovieFrontController extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException{
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException{
		
		request.setCharacterEncoding("UTF-8");
		
		String command = request.getParameter("command");
		Controller controller = HandlerMapping.getController(command);
		
		try{
			AttributeAndView attrAndView = controller.handle(request, response);
			
			if(attrAndView.isRedirect()){
				response.sendRedirect(attrAndView.getUrl());
			}else{
				Map<String, Object> attributes = attrAndView.getAttributes();
				if(attributes != null && attributes.size() != 0){
					Set<String> keys = attributes.keySet();
					for(String attrName : keys){
						Object value = attributes.get(attrName);
						request.setAttribute(attrName, value);
					}
				}
				RequestDispatcher reqDispatcher = 
								request.getRequestDispatcher(attrAndView.getUrl());
				reqDispatcher.forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
			throw new ServletException(e);
		}
	}
}
