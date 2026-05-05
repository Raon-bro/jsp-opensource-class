<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<%
    request.setCharacterEncoding("utf-8");
    String c_code = request.getParameter("course_code");
    String s_no = request.getParameter("student_no");

    PreparedStatement sm = null;
    try {
        String sql = "UPDATE course SET student_no = ? WHERE course_code = ? AND student_no IS NULL";
        sm = conn.prepareStatement(sql);
        sm.setString(1, s_no);
        sm.setString(2, c_code);
        
        int count = sm.executeUpdate();
        
        if(count > 0) {
            out.println("<script>alert('학번 " + s_no + " 학생과 " + c_code + " 강좌가 연결되었습니다.'); location.href='membersList.jsp';</script>");
        } else {
            out.println("<script>alert('연결 실패: 이미 수강생이 있거나 잘못된 접근입니다.'); history.back();</script>");
        }
    } catch(SQLException e) {
        out.println("<script>alert('오류: 존재하지 않는 학번입니다. 학생 등록을 먼저 확인하세요.'); history.back();</script>");
    } finally {
        if(sm != null) sm.close();
        if(conn != null) conn.close();
    }
%>