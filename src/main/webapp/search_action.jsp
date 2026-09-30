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
<jsp:include page="header.jsp"></jsp:include>
<section>

<%
	String registration_code = request.getParameter("registration_code");
	String sql = "SELECT P.REGISTRATION_CODE, NAME, GAME_NUMBERS, APPEARANCE, HIT_NUMBERS, HOME_RUNS, ROUND(((HIT_NUMBERS+HOME_RUNS)/APPEARANCE)*100,2), PUT_OUT, DOUBLE_PLAY, ERROR_COUNT, (PUT_OUT+DOUBLE_PLAY*2)-ERROR_COUNT*5 FROM TBL_PLAYER_INFO P JOIN TBL_HITTER_INFO H ON P.REGISTRATION_CODE = H.REGISTRATION_CODE WHERE P.REGISTRATION_CODE=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,registration_code);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
%>
		<h2>선수 등록 코드 : <%=registration_code %> 성적 조회</h2>
<table border="1">
	<tr>
		<td class="td-center">선수코드</td>
		<td class="td-center">선수명</td>
		<td class="td-center">게임수</td>
		<td class="td-center">타석수</td>
		<td class="td-center">안타수</td>
		<td class="td-center">홈런수</td>
		<td class="td-center">공격포인트</td>
		<td class="td-center">아웃 카운트 수</td>
		<td class="td-center">더블 플레이 수</td>
		<td class="td-center">에러 수</td>
		<td class="td-center">수비 포인트</td>
	</tr>
	<tr>
	<td class="td-center"><%= rs.getString(1)%></td>
	<td class="td-center"><%= rs.getString(2)%></td>
	<td class="td-center"><%= rs.getString(3)%></td>
	<td class="td-center"><%= rs.getString(4)%></td>
	<td class="td-center"><%= rs.getString(5)%></td>
	<td class="td-center"><%= rs.getString(6)%></td>
	<td class="td-center"><%= rs.getString(7)%></td>
	<td class="td-center"><%= rs.getString(8)%></td>
	<td class="td-center"><%= rs.getString(9)%></td>
	<td class="td-center"><%= rs.getString(10)%></td>
	<td class="td-center"><%= rs.getString(11)%></td>
	</tr>
</table>
<p style="text-align:center"><input type="button" value="돌아가기" onclick="location.href='search.jsp'"></p>
<%
	}
	else {
%>
		<h2>선수 등록 코드 : <%=registration_code %> 성적 조회 결과가 없습니다.</h2>
<%		
	}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>