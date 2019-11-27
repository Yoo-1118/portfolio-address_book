<%@page import="addrBook.addrBean"%>
<%@page import="java.util.ArrayList"%>
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
<h2> 전체 주소록 보기 </h2>
<hr>

<a href="addrForm.jsp"> 새로운 주소 추가 </a>

<table border="1">
	<tr height="60">
		<td align="center" width="150"> 이름 </td>
		<td align="center" width="150"> 전화번호 </td>
		<td align="center" width="150"> 이메일 </td>
		<td align="center" width="150"> 취미 </td>
		<td align="center" width="150"> 직업 </td>
	</tr>
	
	<!-- DAO 클래스(getAllAddr())를 이용하여, 리스트에 저장된 주소록을 가져와서 뿌리는 작업을 함 -->
	<%
		addrDAO adao = new addrDAO();
		ArrayList<addrBean> V = adao.getAllAddr();
		
		for(int i=0; i<V.size(); i++){
			//ArrayList로부터 빈즈클래스를 하나씩 꺼내서 출력
			addrBean abean = V.get(i);
	%>
	<tr height="60">
		<td align="center" width="150">
			<a href="addrInfo.jsp?num=<%= abean.getNum() %>">
				<%= abean.getName() %> 
			</a>			
		</td>
		<td align="center" width="150"> <%= abean.getTel() %> </td>
		<td align="center" width="150"> <%= abean.getEmail() %> </td>
		<td align="center" width="150"> <%= abean.getHobby() %> </td>
		<td align="center" width="150"> <%= abean.getJob() %> </td>
	</tr>
	<%
		}
	%>
</table>
</center>
</body>
</html>