<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="problem.*"%>

	<%
		Multhandler handler = (Multhandler)session.getAttribute("handler");
		if(handler == null) {
			handler = new Multhandler();
			handler.guguDan();
			session.setAttribute("handler", handler);
		}
		
		int mulNum = handler.getNum();
		int danNum = handler.getDan();
	
		request.setAttribute("mulNum", mulNum);
		request.setAttribute("danNum", danNum);
		
		request.getRequestDispatcher("problem.jsp").forward(request, response);
		
		
		
	%>

