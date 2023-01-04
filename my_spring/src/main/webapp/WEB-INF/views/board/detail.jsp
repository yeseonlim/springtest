<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
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
margin:0 auto;
top:50%;
transform:translateY(-50%);
}
</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<section>
	 <div class="card" style="width: 50rem;">
		  <ul class="list-group list-group-flush">
		    <li class="list-group-item">번호 | ${bvo.bno }</li>
		    <li class="list-group-item">제목 | ${bvo.title }</li>
		    <li class="list-group-item">
			    <div class="card-body">
			    	<p class="card-text">${bvo.content }</p>
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
			    			</li>
			    		</c:forEach>
			    	</ul>
			    </div>
		    </li>
		    <li class="list-group-item">작성자 | ${bvo.writer }</li>
		    <li class="list-group-item">작성일 | ${bvo.registerDate }</li>
		    <li class="list-group-item">조회수 | ${bvo.read_count }</li>
		  </ul>
		  <div class="card-body">
		 	 <a href="/list" class="card-link"><button type="button" class="btn btn-outline-primary">목록</button></a>
		  <c:if test="${ses != null && ses.id eq bvo.writer }">
		    <a href="/modify?bno=${bvo.bno }" class="card-link"><button type="button" class="btn btn-outline-primary">수정</button></a>
		    <a href="/delete?bno=${bvo.bno }" class="card-link"><button type="button" class="btn btn-outline-primary">삭제</button></a>
		  </c:if>
		  </div>
		<div class="container">
		<div class="input-group my-3">
			<span class="input-group-text" id="cmtWriter">${ses.id }</span>
			<input type="text" class="form-control" id="cmtText" placeholder="Test Add Comment ">
			<button class="btn btn-success" id="cmtPostBtn" type="button">💬</button>
		</div>
		<ul class="list-group list-group-flush" id="cmtListArea">
		  <!-- 댓글목록 -->
		</ul>
	</div>
		</div>
	</section>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	<script type="text/javascript" src="../resources/js/boardComment.js"></script>
	<script type="text/javascript">
		const bnoVal = '<c:out value="${bvo.bno}"/>';
	</script>
	<script type="text/javascript">
		getCommentList(bnoVal);
	</script>