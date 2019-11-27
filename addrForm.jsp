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
<h2> 주소록 입력 폼 </h2>
<hr>
<form action="addrProc.jsp" method="post">
	<table border="1">
		<tr height="60">
			<td width="100" align="center"> 이름 </td>
			<td width="250" align="center">
				<input type="text" name="name">
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 전화번호 </td>
			<td width="250" align="center">
				<input type="text" name="tel">
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 이메일 </td>
			<td width="250" align="center">
				<input type="text" name="email">
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 취미 </td>
			<td width="250" align="center">
				<select name="hobby">
					<option value="football"> 축구 </option>
					<option value="tennis"> 테니스 </option>
				</select>
			</td>
		</tr>
		<tr height="60">
			<td width="100" align="center"> 직업 </td>
			<td width="250" align="center">
				<input type="checkbox" name="job" value="교수"> 교수
				<input type="checkbox" name="job" value="수영선수"> 수영선수
				<input type="checkbox" name="job" value="엔지니어"> 엔지니어
			</td>
		</tr>
		<tr height="60">
			<td colspan="2" align="center">
				<input type="submit" value="확인">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>
</center>
</body>
</html>