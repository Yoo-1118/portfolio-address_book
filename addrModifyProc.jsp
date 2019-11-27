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
	//한글 깨짐 방지
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="abean" class="addrBook.addrBean" />	<!-- num을 addrBean.java에 넘겨줌 -->
<jsp:setProperty name="abean" property="*"	/>


<%
	//addrDAO를 이용하여 해당 데이터(num)를 테이블에서 업데이트 합니다.
	//addrModify(abean);

	addrDAO adao = new addrDAO();
	adao.modifyAddr(abean);
	
	//수정 후에, 전체 목록 보기로 이동하여 수정 내용 확인
	response.sendRedirect("addrList.jsp");
%>

</body>
</html>