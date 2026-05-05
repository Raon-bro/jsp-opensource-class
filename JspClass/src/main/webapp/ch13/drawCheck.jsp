<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<% 
    // 1. 파라미터 이름을 userID에서 student_no로 변경 (입력 폼의 name과 맞춰야 합니다)
    String s_no = request.getParameter("student_no"); 
    
    // 2. SQL문 수정: members 테이블 -> student 테이블, id 컬럼 -> student_no 컬럼
    String sql = "DELETE FROM student WHERE student_no = ?";
    
    PreparedStatement sm = conn.prepareStatement(sql);
    
    // 3. 바인딩 변수 설정
    sm.setString(1, s_no);

    // 4. 실행
    int count = sm.executeUpdate();
    
    // 5. 결과에 따른 페이지 이동
    if(count == 1){
        response.sendRedirect("drawSuccess.jsp");
    } else {
        // 해당 학번이 없거나 삭제 실패 시 에러 페이지로 이동
        response.sendRedirect("drawErr.jsp");
    }
    
    // 6. 자원 해제
    sm.close();
    conn.close();   
%>