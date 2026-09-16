<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="java.js"></script>
<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>개별 타자 성적 조회</h2>
		<form name="frm" onsubmit="return search_check()" action="search_action.jsp">
			<table border=1 class="td-center">
				<tr>
					<td>선수 등록 코드를 입력 하시오.</td>
					<td><input type="text" name="registration_code"></td>
				</tr>
				<tr>
					<td colspan=2>
						<input type="submit" value="선수조회">
						<input type="button" value="홈으로" onclick="location.href='index.jsp'">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>