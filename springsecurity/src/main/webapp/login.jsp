<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
</head>
<body>
	<h3>用户登录</h3>
	${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}
	<form name="loginForm" action="${pageContext.request.contextPath}/springsecurity/j_spring_security_check" method="post">
		<table>
			<tbody>
				<tr>
					<td>用户名:</td>
					<td><input type="text" name="j_username" value=""></td>
				</tr>
				<tr>
					<td>密码:</td>
					<td><input type="password" name="j_password"></td>
				</tr>
				<tr>
					<td ><input name="submit" type="submit" value="登录"></td><td colspan="2"><input name="reset" type="reset" value="重置"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>