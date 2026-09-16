<%@page import="javax.naming.PartialResultException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="java.js"></script>
<jsp:include page="header.jsp"/>
<section>
<h1 class="center">타자 성적 등록</h1>
<form name="frm" onsubmit="return in_check()" action="in_action.jsp">
<table border=1>
	<tr>
		<td class="center">타자 선택</td>
		<td>
			<select name="registration_code">
				<option value="" selected>타자 선택</option>
				<option value="A001">[A001] 김길동</option>
				<option value="A005">[A005] 이길동</option>
				<option value="B002">[B002] 홍길동</option>
				<option value="A006">[A006] 최길동</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="center" colspan=2>공격 포인트</td>
	</tr>
	<tr>
		<td class="center">게임 수</td>
		<td><input type="text" name="game_numbers" class="right"/>게임</td>
	</tr>
	<tr>
		<td class="center">타석 수</td>
		<td><input type="text" name="appearance" class="right"/>타수</td>
	</tr>
	<tr>
		<td class="center">안타 수</td>
		<td><input type="text" name="hit_numbers" class="right"/>안타</td>
	</tr>
	<tr>
		<td class="center">홈런 수</td>
		<td><input type="text" name="home_runs" class="right"/>홈런</td>
	</tr>
	<tr>
		<td class="center" colspan=2>수비 포인트</td>
	</tr>
	<tr>
		<td class="center">아웃 카운트 수</td>
		<td><input type="text" name="put_out" class="right"/>회</td>
	</tr>
	<tr>
		<td class="center">더블 플레이 수</td>
		<td><input type="text" name="double_play" class="right"/>회</td>
	</tr>
	<tr>
		<td class="center">에러</td>
		<td><input type="text" name="error_count" class="right"/>회</td>
	</tr>
	<tr>
		<td class="center" colspan=2>
			<input type="submit" value="등록">
			<input type="reset" value="다시쓰기" onClick="rewrite()">
		</td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>