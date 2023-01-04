<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
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
	 <form action="/modify" method="post" enctype="multipart/form-data">
	 	<h3>게시글 수정</h3>
		<div class="card">
		  <ul class="list-group list-group-flush">
		    <li class="list-group-item">번호 | <input type="text" id="bno" name="bno" value="${bvo.bno }" readonly="readonly"></li>
		    <li class="list-group-item">제목 | <input type="text" id="title" name="title" value="${bvo.title }"></li>
		    <li class="list-group-item">
			    <div class="card-body">
			    	<p class="card-text"><textarea rows="10" cols="100" id="content" name="content">${bvo.content }</textarea></p>
			    </div>
			    <!-- file 표현라인 -->
			    <div class="card-body">
			    	<ul class="list-group list-group-flush">
			    		<c:forEach items="${fList }" var="fvo">
			    			<!-- 파일이 여러개일때 반복적으로 li 추가 -->
			    			<li>
			    				<c:choose>
			    					<c:when test="${fvo.file_type > 0 }">
			    						<div>
			    						<!-- D:...fileUpload/2022/12/28 -->
			    							<img src="/upload/${fn:replace(fvo.save_dir, '\\', '/')}/${fvo.uuid}_th_${fvo.file_name}">
			    						</div>
			    					</c:when>
			    					<c:otherwise>
			    						<div>
			    							<!-- 파일모양 아이콘을 넣어서 일반 파일임을 표현 -->
			    						</div>
			    					</c:otherwise>
			    				</c:choose>
			    				<!-- 파일이름, 등록일, 사이즈 -->
			    				<div class="ms-2 me-auto">
			    				<div class="fw-bold">${fvo.file_name }</div>
			    				${fvo.reg_at }
			    				</div>
			    				<span class="badge bg-secondary rounded-pill">${fvo.file_size } Byte</span>
			    				<button type="button" data-uuid=${fvo.uuid } class="btn btn-sm btn-light py-0 file-x">✖️</button>
			    			</li>
			    		</c:forEach>
			    	</ul>
			    </div>
			  <div class="col-12 d-grid">
	  				<input class="form-control" type="file" style="display: none;"
	  				 id="files" name="files" multiple>
	  				<button type="button" id="trigger" class="btn btn-outline-primary btn-block d-block">Files Upload</button>
				</div>		
				<div class="col-12" id="fileZone">
					
				</div>
		    </li>
		    <li class="list-group-item">작성자 | <input type="text" id="writer" name="writer" value="${bvo.writer }" readonly="readonly"></li>
		  </ul>
		  <div class="card-body">
		 	 <a href="/list" class="card-link"><button type="button" class="btn btn-outline-primary">목록</button></a>
		 	 <button type="submit" id="regBtn" class="btn btn-outline-primary">수정</button>		  
		  </div>
		</div>
	</form>
	</section>
	<script src="../resources/js/boardPosting.js"></script>
	<jsp:include page="../layout/footer.jsp"></jsp:include>