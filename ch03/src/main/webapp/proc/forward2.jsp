<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward2</title>
	</head>
	<body>
		<h3>forward2 페이지</h3>
		<%
			// 서버 자원 내에서 제어권 이동이기 때문에 
			// 외부 타서버 요청 안됨 ex) 네이버..
			pageContext.forward("");
		%>
		
		
	</body>
</html>