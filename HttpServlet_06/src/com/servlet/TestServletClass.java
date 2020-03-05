package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/tsc")
public class TestServletClass extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}//GET 방식 일 때

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}//POST 방식 일 때
	
	/*
	 요청에 대한 정보를 가지고 있는 객체
	 
	request.getCookies();
	request.getSession();
	request.getAttribute(null);
	request.setAttribute(null, null);
	request.getParameter(null);
	request.getParameterNames();
	request.getParameterValues(null);
	 */

	/*
	응답에 대한 정보를 가지고 있는 객체
	
	response.addCookie(null);
	response.getStatus();
	response.sendRedirect(null);
	response.getWriter();
	response.getOutputStream();
	 */
}
