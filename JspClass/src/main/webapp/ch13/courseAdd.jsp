<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head><title>강좌 연결 관리</title></head>
<body>
    Home > 관리자 > 강좌 연결
    <hr>
    <h3>수강 학생 연결 대기 목록</h3>
    
    <%
        String sql = "SELECT course_code, course_name FROM course WHERE student_no IS NULL";
        Statement sm = conn.createStatement();
        ResultSet rs = sm.executeQuery(sql);

        while(rs.next()) {
            String cCode = rs.getString("course_code");
            String cName = rs.getString("course_name");
    %>
    <form action="courseInsertDB.jsp" method="post" style="margin-bottom:15px;">
        <fieldset style="width:300px">
            <legend> 강좌 정보: <%= cCode %> </legend>
            <b>강좌명:</b> <%= cName %><br><br>
            <b>연결할 학번 입력:</b><br>
            <input type="hidden" name="course_code" value="<%= cCode %>">
            <input type="text" name="student_no" placeholder="학번을 입력하세요" required>
            <input type="submit" value=" 연결하기 ▶ ">
        </fieldset>
    </form>
    <% 
        } 
        rs.close(); sm.close(); conn.close();
    %>
    <hr>
    <a href="membersList.jsp">◀ 회원 목록으로 이동</a>
</body>
</html>