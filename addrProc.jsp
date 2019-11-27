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
<%
	//한글깨짐 방지
	request.setCharacterEncoding("utf-8");
%>
<center>
<h2> 주소록 입력 내용 확인 및 저장 </h2>
<hr>
<!-- 
	입력내용은 빈즈클래스(addrBean)에 저장
	빈즈클래스를 이용하여 출력(테이블 형태로)
 -->
<jsp:useBean id="abean" class="addrBook.addrBean">
	<jsp:setProperty name="abean" property="*"	/>
</jsp:useBean>
<%
	/*
		빈즈클래스에 저장된 내용을 DAO 클래스를 이용하여 데이터베이스에 저장함 insertAddr(abean)
	*/
	addrDAO adao = new addrDAO();
	adao.insertAddr(abean);
%>

<!-- 
	테이블 태그를 이용하여, 빈즈클래스의 내용을 출력해줌(입력내용 확인)
 -->
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
</table>

<a href="addrList.jsp"> 전체 주소록 보기 </a>

</center>
</body>
</html>