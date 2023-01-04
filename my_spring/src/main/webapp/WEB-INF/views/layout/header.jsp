<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<h1><img alt="logo" src="../resources/img/로고3.gif" height="150px" width="150px"></h1>
	</header>
		<nav>
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" aria-current="page" href="/">HOME</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="/main">MAIN</a>
			  </li>
			  <c:if test="${ses.id == null }">
			  <li class="nav-item">
			    <a class="nav-link" href="/join">JOIN</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="/login">LOGIN</a>
			  </li>
			  </c:if>
			  <li class="nav-item">
			    <a class="nav-link" href="/list">BOARD</a>
			  </li>
			  <c:if test="${ses.id != null }">
				  <%-- <li class="nav-item">
				    <a class="nav-link" href="#">${ses.name }님 반갑습니다 :)</a>
				  </li> --%>
				  <div class="btn-group btn-primary">
					  <button type="button" class="btn btn-outline-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
					    ${ses.name }님 반갑습니다 :)
					  </button>
					  <ul class="dropdown-menu">
					    <li><a class="dropdown-item" href="/myinfo">MY INFO</a></li>
					    <li><a class="dropdown-item" href="/posting">POSTING</a></li>
					    <li><hr class="dropdown-divider"></li>
					    <li><a class="dropdown-item" href="/logout">LOGOUT</a></li>
					  </ul>
					</div>
			  </c:if>
			</ul>
		</nav>
	<script type="text/javascript">
	const msg = '<c:out value="${msg }" />';
	if(msg==='0'){
		console.log(msg);
		alert("로그아웃 되었습니다.");
	}
	</script>