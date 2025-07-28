<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>responseFile</title>
	</head>
	<body>
		<h3>responseFile 페이지</h3>
		<%
			// Naver 페이지로 리다이렉트(다시 요청)
			response.setHeader("Content-Type", "application/octat-stream");
		%>
		
	</body>
</html>