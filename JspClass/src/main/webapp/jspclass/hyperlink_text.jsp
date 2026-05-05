<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>텍스트에 하이퍼링크 설정하기</title>
</head>
<body>
	<h3>JSP프로젝트 개발 패키지</h3>
	<hr>
	~~ <a href="hufs.jsp">삽입된 이미지 확인하기</a> ~~<br><br>
	
	1. JDK 다운로드 사이트 : 
	<a href="https://www.oracle.com/kr/java/technologies/downloads/#java21">[ 바로가기 ]</a><br>
	
	2. 아파치 톰캣 다운로드 사이트 : 
	<a href="https://tomcat.apache.org/download-90.cgi">[ 바로가기 ]</a><br>
	
	3. 이클립스 다운로드 사이트 : 
	<a href="https://www.eclipse.org/downloads/">[ 바로가기 ]</a><br>
	<img src="${pageContext.request.contextPath}/image/새.gif" width="1000" height="1000" >
</body>
</html>