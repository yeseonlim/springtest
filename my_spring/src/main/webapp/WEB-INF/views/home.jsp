<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
	*{
	margin: 0;
	padding: 0;
	}
	.wrap{
	position: relative;
	}
	img{
	z-index:1;
	height: 100%;
	width: 100%;
	}
	.text{
	z-index:100;
	position:absolute;
	top: 50%;
	left: 40%;
	transform:translate(-50% -50%);
	}
	h3{
	color: #fff;
	width: 300px;
	border: 5px solid #fff;
	text-align: center;
	padding: 10px;
	background-color: threedhighlight;
	}
	
	
	</style>
</head>
<body>
	<div class="wrap">
		<a href="/main"><img alt="" src="../resources/img/rest.jpg"></a>
		<div class="text">
			<h3>If you want more information, click anywhere!</h3>
		</div>
	</div>
</body>
</html>
