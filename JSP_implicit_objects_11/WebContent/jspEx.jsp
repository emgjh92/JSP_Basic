<%@ page language="java" contentType="text/html; charset=EUC-KR" 
   pageEncoding="EUC-KR"%>
<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="EUC-KR">
        <title>Insert title here</title>
    </head>
    <body>
		
		<%!
			String adminId;
			String adminPw;
			
			String imgDir;
			String testServerIP;
			
			String str; 
		%>
		<%-- 오류를 발생시키기 위해 강제로 str을 초기화 시키지 않음--%>
		
		<!-- config 객체 -->
		<%
			adminId = config.getInitParameter("adminId");
			adminPw = config.getInitParameter("adminPw");
		%>
		
		<p>adminId : <%= adminId %></p>
		<p>adminPw : <%= adminPw %></p>
		
		<!-- application 객체 -->
		<%
			imgDir = application.getInitParameter("imgDir");
			testServerIP = application.getInitParameter("testServerIP");
		%>
		
		<p>imgDir : <%= imgDir %></p>
		<p>testServerIP : <%= testServerIP %></p>
		
		<%
			application.setAttribute("connectedIP", "165.62.58.23");
			application.setAttribute("connectedUser", "hong");
		%>
		
		<!-- out 객체 -->
		<%
			out.print("<h1>Hello JAVA World!!</h1>");
			out.print("<h2>Hello JSP World!!</h2>");
			out.print("<h3>Hello Servlet World!!</h3>");
		%>
		
		<!-- exception 객체  ==> str을 초기화 시키지 않았으므로 null 스트링 error 출력-->
		<%
			out.print(str.toString());
		%>
		
    </body>
</html>