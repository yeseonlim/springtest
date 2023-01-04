<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<style>
*{
margin: 0;
padding: 0;
}
html, body{
	height: 100%;
}
body{
	display: flex;
	flex-direction: column;
}
section{
	flex: 1;
}
h1{
text-indent:20px;
padding: 10px 0;
}
form{
max-width: 900px;
margin:0 auto;
}
h3{
text-align: center;
padding: 30px 0;
}
.card{
margin:30px;
}
</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<section>
		<form action="/join" method="post">
			<h3>join</h3>
			<div class="input-group mb-3">
			  <span class="input-group-text">아이디(ID)</span>
			  <input type="text" class="form-control" id="id" name="id" >
			</div>
			<div class="input-group mb-3">
			  <span class="input-group-text">비밀번호(PW)</span>
			  <input type="text" class="form-control" id="pw" name="pw">
			</div>
			<div class="input-group mb-3">
			  <span class="input-group-text">나이(AGE)</span>
			  <input type="text" class="form-control" id="age" name="age">
			</div>
			<div class="input-group mb-3">
			  <span class="input-group-text">이름(NAME)</span>
			  <input type="text" class="form-control" id="name" name="name">
			</div>
			<div class="input-group mb-3">
			  <span class="input-group-text">이메일(EMAIL)</span>
			  <input type="email" class="form-control" id="email" name="email">
			</div>
			<div class="input-group mb-3">
			  <span class="input-group-text">주소(HOME)</span>
			  <input type="text" class="form-control" id="home" name="home">
			</div>
			<div class="d-grid gap-2 d-md-block">
		  <button class="btn btn-outline-primary" type="submit">회원가입</button>
		</div>
		</form>
	</section>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	<script type="text/javascript">
	const msg = '<c:out value="${msg }" />';
	if(msg==='0'){
		console.log(msg);
		alert("이미 사용하고 있는 아이디입니다, 다시 확인해주세요.");
	}
</script>