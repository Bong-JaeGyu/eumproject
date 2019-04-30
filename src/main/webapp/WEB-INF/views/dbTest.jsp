<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
	    <tr>
	        <td>id</td>
	        <td>pw</td>
	        <td>nickname</td>
	    </tr>
	    <c:forEach items="${userList}" var="user">
	        <tr>
	            <td>${user.member_id}</td>
	        
	        </tr>
	    </c:forEach>
	</table>
</body>
</html>
