<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>새 과목 등록</title></head>
<body>
    <h2>새 과목 등록하기</h2>
    
    <form action="insertSubject.jsp" method="post">
        <table border="0">
            <tr>
                <td>과목번호:</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>과목명:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>교수번호:</td>
                <td><input type="text" name="professor_id"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <br>
                    <input type="submit" value="등록하기">
                    <input type="reset" value="다시 쓰기">
                </td>
            </tr>
        </table>
    </form>
    
    <br>
    <a href="project1.jsp">목록으로 돌아가기</a>
</body>
</html>