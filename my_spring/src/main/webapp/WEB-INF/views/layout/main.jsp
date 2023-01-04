<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
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
.menu{
margin: 30px auto;
text-align: center;
}
p{
font-weight: bold;
}
.hr{
width: 70%;
margin: 50px auto;
}
.card{
margin:0 30px;
}
.carousel{
width: 40%;
margin: 0 auto;
}
</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<section>
		<div class="menu">
			<p>점심메뉴 결정장애가 있는 그대를 위해!</p>
			<img alt="메뉴선택" src="../resources/img/menuc.png" width="500px" height="500px">
		</div>
		<div class="hr">
		<hr>
		</div>
		<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active" data-bs-interval="5000">
		      <img src="../resources/img/nabe.gif" class="d-block w-100" alt="나베" height="500px">
		    </div>
		    <div class="carousel-item" data-bs-interval="5000">
		      <img src="../resources/img/egg.gif" class="d-block w-100" alt="계란후라이" height="500px">
		    </div>
		    <div class="carousel-item" data-bs-interval="5000">
		      <img src="../resources/img/noo.gif" class="d-block w-100" alt="라멘" height="500px">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
		<div class="hr">
		<hr>
		</div>
		<div class="menu map">
			<p>인천 맛집 지도</p>
			<img alt=맛집지도" src="../resources/img/map.jpg" width="500px" height="500px">
		</div>
		<div class="hr">
		<hr>
		</div>
	 	<div class="row row-cols-1 row-cols-md-4 g-4">
		  <div class="col">
		    <div class="card h-100">
		  		<img src="../resources/img/bibim.jpg" class="card-img-top" alt="비빔밥">
		  <div class="card-body">
		    <h5 class="card-title">비빔밥</h5>
		    <p class="card-text">당근, 버섯, 오이, 고사리, 도라지 등의 다양한 나물반찬과 계란후라이, 고추장 소스로 맛을 낸 한식</p>
		    <a href="#" class="btn btn-primary">More...</a>
		  </div>
		 </div>
		</div>
		<div class="col">
		    <div class="card h-100">
		  <img src="../resources/img/ekfrrkfql.jpg" class="card-img-top" alt="닭갈비">
		  <div class="card-body">
		    <h5 class="card-title">닭갈비</h5>
		    <p class="card-text">치즈에 폭 찍어먹는 닭갈비 그리고 마지막은 볶음밥</p>
		    <a href="#" class="btn btn-primary">More...</a>
		  </div>
		 </div>
		</div>
		<div class="col">
		    <div class="card h-100">
		  <img src="../resources/img/ttuck.jpg" class="card-img-top" alt="떡볶이">
		  <div class="card-body">
		    <h5 class="card-title">떡볶이</h5>
		    <p class="card-text">쫄깃한 떡과 어묵이 고추장소스로 환상적인 분식</p>
		    <a href="#" class="btn btn-primary">More...</a>
		  </div>
		 </div>
		</div>
		<div class="col">
		    <div class="card h-100">
		  <img src="../resources/img/kimchi.jpg" class="card-img-top" alt="김치찌개">
		  <div class="card-body">
		    <h5 class="card-title">김치찌개</h5>
		    <p class="card-text">잘익은 김치를 고기등과 뭉근하게 끓여낸 밥도둑</p>
		    <a href="#" class="btn btn-primary">More...</a>
		  </div>
		 </div>
		</div>
		<div class="col">
		    <div class="card h-100">
		  <img src="../resources/img/chicken.png" class="card-img-top" alt="치킨">
		  <div class="card-body">
		    <h5 class="card-title">치킨</h5>
		    <p class="card-text">튀기면 맛없을 수 없지만 그중에 치느님은 범접불가</p>
		    <a href="#" class="btn btn-primary">More...</a>
		  </div>
		 </div>
		</div>
		<div class="col">
		    <div class="card h-100">
		  <img src="../resources/img/pasta.jpg" class="card-img-top" alt="파스타">
		  <div class="card-body">
		    <h5 class="card-title">파스타</h5>
		    <p class="card-text">토마토, 크림, 로제, 오일 등 다양한 소스의 배합으로 즐기는 미식</p>
		    <a href="#" class="btn btn-primary">More...</a>
		  </div>
		 </div>
		</div>
	 </div>
	 </section>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
	
	