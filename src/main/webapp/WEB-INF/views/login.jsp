<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>login ȭ��</title>
</head>
<body>
	<h1> �α���ȭ���Դϴ�!! </h1>
	<form action="${pageContext.request.contextPath}/loginCheck" method="post"> <!-- �α��� ��û ������ ���� controller�� ��ϵȰ� ���� -->
		<div class="form-group">
			<input type="text" placeholder="ID" id="user_id" name="user_id">
		</div> 
		<div class="form-group">
			<input type="password" placeholder="Password" id="user_pw" name="user_pw">
		</div>		
		<input type="submit" value="Login" >&nbsp;&nbsp;&nbsp;
	</form>
</body>
</html>
