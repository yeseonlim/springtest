<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myinfo</title>
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
.form{
width: 40%;
margin: 0 auto;
}
</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<section>
	 <h3>MY INFO</h3>
		<div class="form">
		    <label for="id" class="col-sm-1 col-form-label">아이디</label>
		    <input type="text" class="form-control" id="id" name="id" value="${ses.id }" readonly="readonly">
		  </div>
		  <div class="form">
		    <label for="pw" class="col-sm-1 col-form-label">비밀번호</label>
		    <input type="text" class="form-control" id="pw" name="pw" value="********" >
		  </div>
		<div class="form">
		    <label for="age" class="col-sm-1 col-form-label">나이</label>
		    <input type="text" class="form-control" name="age" id="age" value="${ses.age }" readonly="readonly">
		 </div>
		<div class="form">
		    <label for="name" class="col-sm-1 col-form-label">이름</label>
		    <input type="text" class="form-control" name="name" id="name" value="${ses.name }" readonly="readonly">
		 </div>
		<div class="form">
		    <label for="email" class="col-sm-1 col-form-label">이메일</label>
		    <input type="text" class="form-control" name="email" id="email" value="${ses.email }">
		 </div>
		<div class="form">
		    <label for="home" class="col-sm-1 col-form-label">주소</label>
		    <input type="text" class="form-control" name="home" id="home" value="${ses.home }">
		 </div>
	</section>
	<jsp:include page="../layout/footer.jsp"></jsp:include>