<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>학생 등록</title>
</head>
<body>
    Home > 학생 등록
    <hr>
    
    <form action="insertDB.jsp" method="post">
        <fieldset style="width:280px">
            <legend> 신규 학생 정보 입력 </legend>
            
            학번 (Student No) : <br>
            <input type="text" name="student_no" placeholder="예: 20260001" required><br><br>
            
            이름 (Name) : <br>
            <input type="text" name="name" placeholder="이름을 입력하세요" required><br><br>
            
            전공 (Major) : <br>
            <input type="text" name="major" placeholder="전공학과 입력" required><br>
            
            <hr>
            <div align="right">
                <input type="submit" value=" 학생 등록하기 ▶ ">
            </div>
        </fieldset>
    </form>
    
    <br>
    <a href="main.jsp">◀ 메인 화면으로 이동</a>
</body>
</html>