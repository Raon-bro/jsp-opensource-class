<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    try {
        String url = "jdbc:mysql://localhost:3306/myproject_db?useSSL=false&allowPublicKeyRetrieval=true";
        String user = "user1";
        String passwd = "alcmgk1701@"; 
        
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, passwd);
    } catch (Exception e) {
        out.println("DB 연결 오류 발생: " + e.getMessage());
    }
%>