<%@page import="addrBook.addrBean"%>
<%@page import="addrBook.addrDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2> 선택한 주소의 정보 보기 </h2>
<hr>
<%
	//한글깨짐 방지
	request.setCharacterEncoding("utf-8");

	//addrDAO의 getOneAddr(num)에 접근하여 한 사람의 주소 정보를 가져와서 출력
	addrDAO adao = new addrDAO();
	
	//num이 primary key이기 때문에 구분이 가능하다.
	int num = Integer.parseInt(request.getParameter("num"));
	addrBean abean = adao.getOneAddr(num);
%>
<table border="1">
	<tr height="60">
		<td width="100" align="center"> 이름 </td>
		<td width="250" align="center">
			<%= abean.getName() %>
		</td>
	</tr>
	<tr height="60">
		<td width="100" align="center"> 전화번호 </td>
		<td width="250" align="center">
			<%= abean.getTel() %>
		</td>
	</tr>
	<tr height="60">
		<td width="100" align="center"> 이메일 </td>
		<td width="250" align="center">
			<%= abean.getEmail() %>
		</td>
	</tr>
	<tr height="60">
		<td width="100" align="center"> 취미 </td>
		<td width="250" align="center">
			<%= abean.getHobby() %>
		</td>
	</tr>
	<tr height="60">
		<td width="100" align="center"> 직업 </td>
		<td width="250" align="center">
			<%= abean.getJob() %>
		</td>
	</tr>
	<tr height="60">
		<td align="center" colspan="2">
			<input type="button" value="수정하기" onclick="location.href='addrModify.jsp?num=<%= abean.getNum() %>'">
			<input type="button" value="삭제하기" onclick="location.href='addrDelete.jsp?num=<%= abean.getNum() %>'">
			<input type="button" value="목록보기" onclick="location.href='addrList.jsp'">
		</td>
	</tr>
</table>
</center>
</body>
</html>