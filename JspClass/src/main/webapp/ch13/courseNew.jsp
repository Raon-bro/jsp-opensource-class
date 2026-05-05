<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>새 강좌 등록</title></head>
<body>
    Home > 새 강좌 등록
    <hr>
    <form action="courseNewDB.jsp" method="post">
        <fieldset style="width:280px">
            <legend> 시스템 강좌 데이터 추가 </legend>
            강좌 코드 : <br><input type="text" name="course_code" required><br><br>
            강좌 명칭 : <br><input type="text" name="course_name" required><br>
            <hr>
            <div align="right">
                <input type="submit" value=" 강좌 등록하기 ▶ ">
            </div>
        </fieldset>
    </form>
    <br>
    <a href="main.jsp">◀ 메인 화면으로 이동</a>
</body>
</html>