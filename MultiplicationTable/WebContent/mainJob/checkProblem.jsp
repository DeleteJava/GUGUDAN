<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="problem.*"%>

	<%
		Multhandler handler = (Multhandler)session.getAttribute("handler");
		int userNum = 0;
		if(request.getParameter("result") != null) {
			userNum = Integer.parseInt(request.getParameter("result"));
		}
		handler.sameNumCheck(userNum);
		
		boolean flag = handler.checkOver();
		
		
		if(flag) response.sendRedirect("getProblem.jsp");
		else {
			request.setAttribute("resultCount", handler.getResultCount());
			session.removeAttribute("handler");
			request.getRequestDispatcher("resultPage.jsp").forward(request, response);
		}
	
	
	%>
	