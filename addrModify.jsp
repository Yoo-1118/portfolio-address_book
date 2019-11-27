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
<h2> 선택된 주소록 수정 </h2>
<hr>

<%
	//한글 깨짐 방지
	request.setCharacterEncoding("utf-8");
	
	//선택된 주소록의 데이터(num으로 알 수 있음)를 데이터베이스로부터 가져와서 수정할 수 있도록 합니다.
	//addrBean abean = getOneaddr(num)
	
	addrDAO adao = new addrDAO();
	int num = Integer.parseInt(request.getParameter("num"));	//addrInfo()의 num에서 넘겨주고 있다.
	addrBean abean = adao.getOneAddr(num);	//num을 이용해서 하나의 주소 데이터를 가져옴 
	
%>

<form action="addrModifyProc.jsp" method="post">
	<table border="1">
		<tr height="60">
			<td width="100" align="center"> 이름 </td>
			<td width="250" align="center">
				<input type="text" value="<%= abean.getName() %>" name="name">
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 전화번호 </td>
			<td width="250" align="center">
				<input type="text" value="<%= abean.getTel() %>" name="tel">
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 이메일 </td>
			<td width="250" align="center">
				<input type="text" value="<%= abean.getEmail() %>" name="email">
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 취미 </td>
			<td width="250" align="center">
				<input type="text" value="<%= abean.getHobby() %>" name="hobby">
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 직업 </td>
			<td width="250" align="center">
				<input type="text" value="<%= abean.getJob() %>" name="job">
			</td>
		</tr>
		<tr height="60">
			<td align="center" colspan="2">
				<input type="hidden" name="num" value="<%= abean.getNum() %>">	<!-- num을 넘겨줌 -->
				<input type="submit" value="글 수정 확인">
				<input type="button" value="목록보기" onclick="location.href='addrList.jsp'">
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>