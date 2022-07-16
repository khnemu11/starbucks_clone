<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="starbucksClone.dao.CoffeeDao"%>
<%@page import="starbucksClone.bean.Coffee"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
        <title>Starbucks</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">        <link rel="stylesheet" type="text/css" href="./css/header.css">
        <link rel="stylesheet" type="text/css" href="./css/footer.css">
        <link rel="stylesheet" type="text/css" href="./css/coffeeBeanAdd.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<jsp:include page="./header.html"></jsp:include>
<main class="container-wrapper">
<form action="adduser.jsp" method="post" enctype="multipart/form-data">
	<div class="container">
		<div class="container-name">
				<h2>스타벅스 원두</h2>
		</div>
			<div class="context-top">
				<div class="coffee-img">
					<img src="img/logo.png"/>
					<input type="file" name=file>
				</div>
				<div class="coffee-description">
					<div class="name">
						<div class="name-left">
							<h3>한글 이름</h3><input type="text" name="name_kr"/></h2>
							<h3>영어 이름</h3><input type="text" name="name_en"/>
						</div>
						<div class="name-right">
							<select class="form-select type" aria-label="Default select example" name="type">
								  <option selected value="blond_roast">원두 종류</option>
								  <option value="blond_roast">블론드 로스트</option>
								  <option value="medium_roast">미디엄 로스트</option>
								  <option value="dark_roast">다크 로스트</option>
								  <option value="reserve_roast">리저브 원두</option>
							</select>
						</div>
					</div>
					<div class="description-sum">
						<h3>커피 내용 요약</h3>
						<input type="text" name="description_summary"/>
					</div>
					
					<div class="weight">
						<p>250g</p>
					</div>
					<div class="more">
						<img src="./img/icon/more_left.jpg"/>
						<img src="./img/icon/more_right.jpg"/>
					</div>
				</div>
			</div>
			
			<div class="context-bottom">
				<input class="btn btn-primary submit" type="submit" value="추가">
			</div>
				
	</div>
	</form>
	
</main>


<jsp:include page="./footer.html"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>