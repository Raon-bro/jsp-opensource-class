<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<%
    request.setCharacterEncoding("utf-8");
    String c_code = request.getParameter("course_code");
    String c_name = request.getParameter("course_name");

    PreparedStatement sm = null;
    try {
        String sql = "INSERT INTO course (course_code, course_name, student_no) VALUES (?, ?, NULL)";
        sm = conn.prepareStatement(sql);
        sm.setString(1, c_code);
        sm.setString(2, c_name);
        sm.executeUpdate();
        
        out.println("<script>alert('새 강좌가 등록되었습니다.'); location.href='main.jsp';</script>");
    } catch(SQLException e) {
        out.println("<script>alert('실패: 이미 존재하는 강좌코드입니다.'); history.back();</script>");
    } finally {
        if(sm != null) sm.close();
        if(conn != null) conn.close();
    }
%>