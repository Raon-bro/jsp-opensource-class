<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
</head>
<body>
	Home > 등록 회원 관리
	<hr>
	<%
    	// JOIN을 통해 학생 정보와 수강 강좌명을 한 줄에 가져옵니다.
    	String sql = "SELECT s.student_no, s.name, s.major, c.course_name " +
        	         "FROM student s LEFT JOIN course c ON s.student_no = c.student_no";
    	Statement sm = conn.createStatement();
    	ResultSet rs = sm.executeQuery(sql);
    
  	  while(rs.next()){
    	    String cName = rs.getString("course_name") == null ? "없음" : rs.getString("course_name");
        	out.println(rs.getString("student_no") + " / " + rs.getString("name") + 
          	          " / " + rs.getString("major") + " / 강좌: " + cName + "<br>");
    	}
    	conn.close();
	%>
	<hr>
	<table border="0">
		<tr>
			<td>
				<form action="withdraw.jsp" method="post" >
					<input type="submit" value=" ◀ 회원 탈퇴시키기 " >
				</form>
			</td>	 
			<td>
				<form action="logout.jsp" method="post" >
					<input type="submit" value=" 로그 아웃 ▶" >
				</form>
			</td>
			<td>
            	<form action="courseAdd.jsp" method="post">
                	<input type="submit" value=" + 새 강좌 연결하기 ">
            	</form>
        	</td>
        	<td>
            	<form action="withdraw.jsp" method="post">
                	<input type="submit" value=" ◀ 학생 삭제하기 ">
            	</form>
        	</td>
		</tr>
	</table>  		
</body>
</html>	