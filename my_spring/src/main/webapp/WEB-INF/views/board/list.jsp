<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
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
.list-group{
width: 60%;
margin: 0 auto;
}
</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<section>
	 <h3>게시글</h3>
		<div class="list-group">
		<c:forEach items="${list }" var="bvo">
		  <a href="/detail?bno=${bvo.bno }" class="list-group-item list-group-item-action">
		    <div class="d-flex w-100 justify-content-between">
		      <h5 class="mb-1">${bvo.title }</h5>
		      <small>${bvo.registerDate } / <span style="color: red">${bvo.read_count }</span></small>
		    </div>
		    <p class="mb-1">${bvo.content }</p>
		    <small>${bvo.writer }</small>
		  </a>
		  </c:forEach>
		    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<a class="btn btn-outline-primary" href="/board/register">글작성</a>
			</div>
		 </div>
		 <nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
		  	<c:if test="${pgh.prev }">
		    <li class="page-item"><a class="page-link" href="/list?pageNo=${pgh.startPage-1 }&qty=${pgh.pgvo.qty }">Previous</a></li>
		    </c:if>
		    <c:forEach begin="${pgh.startPage }" end="${pgh.endPage }" var="i">
		    <li class="page-item"><a class="page-link" href="/list?pageNo=${i }&qty=${pgh.pgvo.qty }">${i }</a></li>
		    </c:forEach>
		    <c:if test="${pgh.next }">
		    <li class="page-item"><a class="page-link" href="/list?pageNo=${pgh.endPage+1 }&qty=${pgh.pgvo.qty }">Next</a></li>
		    </c:if>
		  </ul>
		</nav>
	</section>
	<jsp:include page="../layout/footer.jsp"></jsp:include>