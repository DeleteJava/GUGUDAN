<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
<style>
	h1 {
		text-align: center;
		color: rgb(160,160,160);
		font-size: 50px;
	}
	
	h1 > span {
		color: skyblue;
	}
	
	div {
		display: flex;
		justify-content: center;
		margin-top: 700px;
	}
	
	div > a {
		text-decoration: none;
		background-color: black;
		border: 4px solid rgb(160,160,160);
		padding: 20px 50px;
		font-size: 30px;
		color: white;
	}
	
	a:hover {
		background-color: yellow;
		transition: 1.2s;
		cursor: pointer;
	}

</style>
</head>
<body>
	<h1>정답을 맞춘 횟수는 총 <span>${resultCount }</span>개 입니다</h1>
	
	<div>
		<a href="start.jsp">재도전 하기</a>
	</div>
</body>
</html>