<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="login.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
	
	#headerName {
		text-align: center;
		font-size: 50px;
	}
	
	fieldset {
		width: 600px;
		margin: 0 auto;
		border-bottom-left-radius: 20px;
		border-bottom-right-radius: 20px;
		border-top-left-radius: 20px;
		border-top-right-radius: 20px;
		border-left: 2px solid rgb(150,150,150);
		border-right: 2px solid rgb(150,150,150);
		border-top: 10px solid rgb(129,129,129);
		border-bottom: 10px solid rgb(129,129,129);
	}
	
	input {
		margin: 20px 30px;
	}	
	
	p > input {
		padding: 10px 20px;
		font-size: 40px;
	}	
	
	input::placeholder {
	  font-style: italic;
	}
	
	.button {
		padding: 10px 20px;
		font-weight: bold;
	}
	
	a {
		text-decoration: none;
	}
	
	h1 > a {
		color: black;
	}
	
	h1 > a:hover {
		color:rgb(200,200,200);
		text-decoration: underline;
	}

</style>
	
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		session.setAttribute("path", request.getContextPath());
	%>
	
	
	<h1 id="headerName"><a href="${path }/accountLogin/main.jsp">GUGUDAN</a></h1>
	
	<fieldset>
		<form action="${path }/accountLogin/loginCheck.jsp" method="POST">
			<p><input type="text" name="userId" placeholder="ID" required autocomplete="off"></p>
			<p><input type="password" name="userPw" placeholder="PW" required></p>
			<input type="submit" value="로그인" class="button">		
		</form>
	</fieldset>
</body>
</html>