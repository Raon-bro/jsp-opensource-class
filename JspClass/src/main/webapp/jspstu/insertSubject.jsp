<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String professor_id = request.getParameter("professor_id");
	
	PreparedStatement pstmt = null; 

	
	try {
		String sql = "INSERT INTO subject (id, name, professor_id) VALUES (?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, Integer.parseInt(id));
		pstmt.setString(2,name);
		pstmt.setInt(3, Integer.parseInt(professor_id));
		
		pstmt.executeUpdate();
		
		response.sendRedirect("project1.jsp");
	} catch(Exception e) {
		out.print("데이터 저장 중 에러 발생: " + e.getMessage());
	} finally {
		if(pstmt !=null) pstmt.close();
	}
%>
	