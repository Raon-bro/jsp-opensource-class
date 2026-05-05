<%@ page import = "java.sql.*" %>    
<%
    String url = "jdbc:mysql://localhost:3306/myproject_db?useSSL=false&allowPublicKeyRetrieval=true";
    String user = "user1";
    String passwd = "alcmgk1701@"; 
    
    Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, passwd);
%>