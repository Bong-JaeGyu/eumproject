<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function check() {		

		login.action="login.do" ;
		
	//var m_email = document.getElementById("m_email").value;
		//var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
			//	if(exptext.test(m_email)==false){
			//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우			
		//	alert("이 메일형식이 올바르지 않습니다.");
	//		document.addjoin.m_email.focus();
	//		return false;
	//	}else {
	//		login.action="login.do" ;
	//	}

	}

	

</script>


</head>
<body>


<center>
		<h1>여기는 로그인 페이지</h1>
		<br>
		 
		<form name="login" >
			<table>
				<tr>
					<td width="150px" align="center">email:</td>
					<td width="150px" align="center"><input type="text"
						name="m_email" id="m_email"></td>
				</tr>

				<tr>
					<td width="150px" align="center">비밀번호:</td>
					<td width="150px" align="center"><input type="password" name="m_pw"></td>
				</tr>

				<tr>
					<td><input type="button" value="가입하기"
						onclick="location.href='joinForm.do'"></td>
					<td width="150px" align="center"><input type="submit"
						value="로그인" onclick='check()'/></td>

				</tr>


			</table>
			  

			
		</form>


	</center>







</body>
</html>