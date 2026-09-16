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

<h2>전체 타자 성적 조회</h2>
<table border="1">
	<tr>
		<td class="td-center">선수 등록 코드</td>
		<td class="td-center">선수명</td>
		<td class="td-center">생년월일</td>
		<td class="td-center">키</td>
		<td class="td-center">몸무게</td>
		<td class="td-center">소속</td>
		<td class="td-center">선수등급</td>
		<td class="td-center">순위</td>
	</tr>
<%
	String sql = "SELECT P.REGISTRATION_CODE, NAME, TO_CHAR(TO_DATE(BIRTH_DAY,'YYYYMMDD'),'YYYY\"년\"MM\"월\"DD\"일\"'), HEIGHT, WEIGHT, P.REGISTRATION_CODE, ROUND(((HIT_NUMBERS+HOME_RUNS)/APPEARANCE)*100,2)+((PUT_OUT+DOUBLE_PLAY*2)-ERROR_COUNT*5) AS POINT FROM TBL_PLAYER_INFO P JOIN TBL_HITTER_INFO H ON P.REGISTRATION_CODE = H.REGISTRATION_CODE ORDER BY POINT DESC";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	int rank=0;
	
	while(rs.next()){
		rank+=1;
%>
		<tr>
			<td class="td-center"><%=rs.getString(1) %></td>
			<td class="td-center"><%=rs.getString(2) %></td>
			<td class="td-center"><%=rs.getString(3) %></td>
			<td class="td-center"><%=rs.getString(4) %></td>
			<td class="td-center"><%=rs.getString(5) %></td>
			<td class="td-center"><%=rs.getString(6).substring(0,1).equals("A")?"1군":"2군" %></td>
			<td class="td-center"><%=rs.getInt(7)>=90?"A":rs.getInt(7)>=80?"B":rs.getInt(7)>=70?"C":rs.getInt(7)>=60?"D":"F"%></td>
			<td class="td-center"><%=rank %></td>
		<tr>
<%
	}
%>
</table>
<p style=text-align:center><input type="button" value="돌아가기" onclick="location.href='index.jsp'"></p>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>