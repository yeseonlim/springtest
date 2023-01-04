<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>posting</title>
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

</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<section>
	 <h3>게시글 작성</h3>
	 <form action="/posting" method="post" enctype="multipart/form-data">
		<div class="form">
		    <label for="title" class="col-sm-1 col-form-label">제목</label>
		    <input type="text" class="form-control" name="title" id="title">
		 </div>
		<div class="form">
		    <label for="writer" class="col-sm-1 col-form-label">작성자</label>
		    <input type="text" class="form-control" id="writer" name="writer" value="${ses.id }" readonly="readonly">
		  </div>
		<div class="form">
		    <label for="content" class="col-sm-1 col-form-label">내용</label>
		    <textarea rows="10" cols="100" class="form-control" id="content" name="content"></textarea>
		 </div>
		 <div class="col-12 d-grid">
  				<input class="form-control" type="file" style="display: none;"
  				 id="files" name="files" multiple>
  				<button type="button" id="trigger" class="btn btn-outline-primary btn-block d-block">Files Upload</button>
			</div>		
			<div class="col-12" id="fileZone">

			</div>
		 <div class="d-grid gap-2 d-md-block">
		  <button class="btn btn-outline-primary" id="regBtn" type="submit">게시글 등록</button>
		 </div>
	</form>
	</section>
	<script type="text/javascript" src="../resources/js/boardPosting.js"></script>
	<jsp:include page="../layout/footer.jsp"></jsp:include>