<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home page</title>
</head>
<body>
	<fieldset>
		<legend>로그인</legend>
		<form method='post' action='loginPro'>
			<input type='text' name='fid' placeholder="아이디 입력" /> 
			<input type='password' name='fpass' placeholder="비밀번호 입력" />
			<input type='submit' value='login' />
		</form>
	</fieldset>
</body>
</html>