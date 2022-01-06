<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>

<%
	GuestbookDao guestbookDao = new GuestbookDao();

	String password = request.getParameter("password");
	int count = guestbookDao.delete(password);
	if(count > 0) {
		System.out.println(count + "건이 삭제되었습니다.");
	}
	
	response.sendRedirect("./addList.jsp");
%>
