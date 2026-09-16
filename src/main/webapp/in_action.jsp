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
<%
	String registration_code = request.getParameter("registration_code");
	String game_numbers = request.getParameter("game_numbers");
	String appearance = request.getParameter("appearance");
	String hit_numbers = request.getParameter("hit_numbers");
	String home_runs = request.getParameter("home_runs");
	String put_out = request.getParameter("put_out");
	String double_play = request.getParameter("double_play");
	String error_count = request.getParameter("error_count");

	try{
		String sql = "INSERT INTO TBL_HITTER_INFO VALUES(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, registration_code);
		pstmt.setString(2, game_numbers);
		pstmt.setString(3, appearance);
		pstmt.setString(4, hit_numbers);
		pstmt.setString(5, home_runs);
		pstmt.setString(6, put_out);
		pstmt.setString(7, double_play);
		pstmt.setString(8, error_count);
		pstmt.executeUpdate();
		%>
			<script>
				alert("타자 성적 등록이 정상적으로 완료되었습니다!")
				location.href="search.jsp"				
			</script>
		<%
	}catch(Exception e){
		out.print("DB오류 : "+e.getMessage());
	}

%>
</body>
</html>