<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("UTF-8");
%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
<style>
	.text_center{
		text-align:center;
	}
</style>
<script>
	function Check() {
			var id = document.getElementById("id");
			var pwd = document.getElementById("pwd");
			var name = document.getElementById("name");
			var email = document.getElementById("email");

			if (id.value == '') {
				alert('아이디를 입력해주세요.');
				id.focus();
				return false;
			}
			
			if (pwd.value.length < 4 || pwd.value.length > 10) {
				alert("[비밀번호]\n 최소 4자에서 최대 10자까지 입력하세요");
				pwd.focus();
				return false;
			}

			if (name.value.length < 1 || name.value.length > 10) {
				alert("[이름]\n 최소 1자에서 최대 10자까지 입력하세요");
				name.focus();
				return false;
			}


			if (email.value.indexOf('@') == -1 || email.value.indexOf('.') == -1) {
			    alert("[이메일]\n 올바른 이메일 형식이 아닙니다.");
			    email.focus();
			    return false;
			}			
			return true;
		}
</script>
</head>
<body>
	<form method="post" name="update" action="${contextPath}/member/addMember.do">
		<h1 class="text_center">회원 가입창</h1>
		<table align="center">
			<tr>
				<td width="200"><p align="right">아이디</td>
				<td width="400"><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">비밀번호</td>
				<td width="400"><input type="password" name="pwd" id="pwd"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">이름</td>
				<td width="400"><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td width="200"><p align="right">이메일</td>
				<td width="400"><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td width="200"><p>&nbsp;</p></td>
				<td width="400">
					<input type="submit" value="가입하기" onclick="return Check()"> 
					<input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
		</form>
</body>
</html>