<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>내장객체 스코프</title>
		<%-- 
			날짜 : 2025/07/28
   			이름 : 김수진
   			내용 : JSP 내장객체 scope 실습
   		--%>
	</head>
	<body>
		<h3>내장객체 값 설정</h3>
		<h3>JSP 내장객체 scope</h3>\
		<%
			// 내장객체 값 설정, 각각의 내장객체에 name값을 설정한것
			pageContext.setAttribute("name", "김유신");
			request.setAttribute("name", "김춘추");
			session.setAttribute("name", "장보고");
			application.setAttribute("name", "강감찬");
			
			
		%>
		<h4>내장객체 값 확인</h4>
		<p>
			 pageContext 값 : <%= pageContext.getAttribute("name") %><br/>
			 request 값 : <%= request.getAttribute("name") %><br/>
			 session 값 : <%= session.getAttribute("name") %><br/>
			 application 값 : <%= application.getAttribute("name") %><br/>
		</p>
		
		<%
			// 페이지 흐름 제어: 요청을 resultScope.jsp로 포워드하여 응답 처리 위임
			pageContext.forward("./proc/resultScope.jsp");
		%>
				
	</body>
</html>








