<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="login.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공 여부</title>
</head>
<body>
	<%
		LoginHandler handler = (LoginHandler)session.getAttribute("handler");
		if(handler == null) {
			handler = new LoginHandler();
			session.setAttribute("hanlder", handler);
		}
		
		
	
		handler.managerAccount();
		String accountId = request.getParameter("userId");
		String accountPw = request.getParameter("userPw");
		String result = (String)session.getAttribute("path");
		result += handler.checkAccount(accountId, accountPw) == true ? "/mainJob/start.jsp" : "/accountLogin/main.jsp";
		response.sendRedirect(result);
	%>
	

	

</body>
</html>