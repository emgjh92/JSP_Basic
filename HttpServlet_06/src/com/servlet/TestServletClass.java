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
	
	}//GET ��� �� ��

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}//POST ��� �� ��
	
	/*
	 ��û�� ���� ������ ������ �ִ� ��ü
	 
	request.getCookies();
	request.getSession();
	request.getAttribute(null);
	request.setAttribute(null, null);
	request.getParameter(null);
	request.getParameterNames();
	request.getParameterValues(null);
	 */

	/*
	���信 ���� ������ ������ �ִ� ��ü
	
	response.addCookie(null);
	response.getStatus();
	response.sendRedirect(null);
	response.getWriter();
	response.getOutputStream();
	 */
}
