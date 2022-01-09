<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>

<%
	request.setCharacterEncoding("UTF-8");
	GuestbookDao guestbookDao = new GuestbookDao();

	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");	
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(password);
	
	int count = guestbookDao.delete(vo);
	if(count > 0) {
		System.out.println(count + "건이 삭제되었습니다.");
	}
	
	response.sendRedirect("./addList.jsp");
%>
