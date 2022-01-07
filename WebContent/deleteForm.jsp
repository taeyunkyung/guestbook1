<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String no = request.getParameter("no");
	System.out.println(no + "번이 선택되었습니다.");	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		비밀번호 <input type="password" name="password" values="">
		<input type="hidden" name="no" value="<%=no %>">
		<button type="submit">확인</button>
	</form>
	
	<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>