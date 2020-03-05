<%@ page language="java" contentType="text/html; charset=EUC-KR" 
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="EUC-KR">
        <title>Insert title here</title>
    </head>
    <body>
		<%!
			String m_name;
			String m_pass;
			String m_gender;
			String[] m_hobby;
			String m_residence;
		%> <!-- 변수선언  -->
		
		
		<%
			m_name = request.getParameter("m_name");
			m_pass = request.getParameter("m_pass");
			m_gender = request.getParameter("m_gender");
			m_hobby = request.getParameterValues("m_hobby");
			m_residence = request.getParameter("m_residence");
		%><!-- 변수 get  -->
		
		m_name : <%= m_name %> </br>
		m_pass : <%= m_pass %> </br>
		m_gender : <%= m_gender %> </br> 
		m_hobby :
		<%
			
			for(int i=0; i<m_hobby.length; i++) {
		%>
			<%= m_hobby[i] %>
		<%
			}
		%> </br>
		m_residence : <%= m_residence %> <!-- 전달받은 값 출력 (hobby는 다중값이라 for문 사용)  -->

    </body>
</html>