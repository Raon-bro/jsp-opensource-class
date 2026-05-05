<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bird Party</title>
</head>
<body>
	<div>
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200"
             id="partyCat" onclick="toggleParty()" style="cursor:pointer; border-color: red;">
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
	</div>
	<div>
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
	</div>
	<div>
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
	</div>
	<div>
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
	</div>
	<div>
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
	</div>
	<div>
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
	</div>
	<div>
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
		<img src="${pageContext.request.contextPath}/image/새.gif" width="200" height="200" >
	</div>
	<script>
       
        let isPartyOn = false; 
        
        let partyInterval; 

        function toggleParty() {
            isPartyOn = !isPartyOn;
            
            if (isPartyOn) {
                partyInterval = setInterval(changeBgColor, 100);
                
                document.getElementById('partyCat').style.borderColor = "lime";
            } 
            else {
                clearInterval(partyInterval);
                
                document.body.style.backgroundColor = "white";
                
                document.getElementById('partyCat').style.borderColor = "red";
            }
        }

        function changeBgColor() {
            const randomColor = "#" + Math.floor(Math.random()*16777215).toString(16);
            
            document.body.style.backgroundColor = randomColor;
        }
    </script>
</body>
</html>