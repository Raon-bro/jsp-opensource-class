<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<%
    request.setCharacterEncoding("utf-8");
    String s_no = request.getParameter("student_no");
    String s_name = request.getParameter("name");
    String s_major = request.getParameter("major");

    PreparedStatement sm = null;
    try {
        String sql = "INSERT INTO student (student_no, name, major) VALUES (?, ?, ?)";
        sm = conn.prepareStatement(sql);
        sm.setString(1, s_no);
        sm.setString(2, s_name);
        sm.setString(3, s_major);
        
        sm.executeUpdate();
        
        out.println("<script>alert('" + s_name + " 학생이 등록되었습니다.'); location.href='main.jsp';</script>");
        
    } catch (SQLException e) {
        if (e.getErrorCode() == 1062) {
            out.println("<script>alert('이미 존재하는 학번입니다. 다시 확인해주세요.'); history.back();</script>");
        } else {
            out.println("<script>alert('오류 발생: " + e.getMessage() + "'); history.back();</script>");
        }
    } finally {
        if(sm != null) sm.close();
        if(conn != null) conn.close();
    }
%>