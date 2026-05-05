<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<%
	String id = request.getParameter("id");
	PreparedStatement pstmt = null;
	
	try {
		String sql = "DELETE FROM subject WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(id));
		
		pstmt.executeUpdate();
		response.sendRedirect("project1.jsp");
	} catch(Exception e) {
		out.print("삭제 중 에러: " + e.getMessage());
	} finally {
		if(pstmt != null) pstmt.close();
	}

%>