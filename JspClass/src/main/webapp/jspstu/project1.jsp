<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="dbConn.jsp" %> <html>
<body>

    <h2>과목 목록 조회</h2>
	<button type="button" onclick="location.href='addSubject.jsp'">새 과목 등록</button>
	<br><br>
    <table border="1" width="500">
        <tr>
            <th>과목번호</th>
            <th>과목명</th>
            <th>교수번호</th>
        </tr>

        <%
            // SQL 실행 준비
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            try {
                String sql = "SELECT * FROM subject ORDER BY id ASC"; // SQL
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();

                // 반복문 시작, 표 도출 부분
                while(rs.next()) {
        %>
                <tr>
                	<td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td> 
                    <td><%= rs.getInt("professor_id") %></td>
                    <td>
                    	<button type = "button" onclick="if(confirm('정말 삭제할까요?')) {location.href='deleteSubject.jsp?id=<%=rs.getInt("id") %>';}">
                    		삭제
                    	
                    	</button>
                    </td>
                </tr>
        <%
                } // while문 끝
            } catch(Exception e) {
                out.print("에러 발생: " + e.getMessage());
            } finally {
                // 자원 해제
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
            }
        %>
    </table>
</body>
</html>