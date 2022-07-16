<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="starbucksClone.dao.CoffeeDao,starbucksClone.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	   <meta charset="UTF-8">
        <title>Starbucks</title>
        <link rel="stylesheet" type="text/css" href="./css/header.css">
        <link rel="stylesheet" type="text/css" href="./css/footer.css">
        <link rel="stylesheet" type="text/css" href="./css/coffeeBeanDetail.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<%@page import="starbucksClone.dao.CoffeeDao"%>
	<%@page import="starbucksClone.bean.Coffee"%>
	<%
		String seq=request.getParameter("seq");
		Coffee u=CoffeeDao.getRecordBySeq(Integer.parseInt(seq));
		request.setAttribute("coffee",u);
	%>
	<% String helloText="Hello~!"; %>
	<jsp:include page="./header.html"></jsp:include>
	<div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0" nonce="e28mUopf"></script> <!-- 페이스북 공유 api-->
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0" nonce="FajjP1El"></script> <!-- 페이스북 페이지 api-->
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
            fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));</script>
          
	<main class="container-wrapper">
		<div class="container">
			<div class="container-name">
				<h2>스타벅스 원두</h2>
				<span class="title-home">
					<span class="material-symbols-outlined">home</span>&nbsp;
					<span> > COFFEE >
						<c:choose>
							<c:when test="${coffee.type eq 'dark_roast'}">
								다크 로스트
							</c:when>
							<c:when test="${coffee.type eq 'blond_roast'}">
								블론드 로스트
							</c:when>
							<c:when test="${coffee.type eq 'medium_roast'}">
								미디엄 로스트
							</c:when>
							<c:when test="${coffee.type eq 'reserve_roast'}">
								리저브 원두
							</c:when>
						</c:choose>					
					  > ${coffee.name_kr}</span>
				</span>
			</div>
			<div class="context-top">
				<div class="coffee-img">
					<img src="./img/coffee_bean/coffee_bean_${coffee.seq}.jpg"/>
				</div>
				<div class="coffee-description">
					<div class="name">
						<div class="name-left">
							<h2>${coffee.name_kr}</h2>
							<p>${coffee.name_en}</p>
						</div>
						<div class="name-right">
							<span class="material-symbols-outlined" id="edit" data-seq="${coffee.seq}">edit</span>
							<span class="material-symbols-outlined" id ="delete" data-seq="${coffee.seq}">delete</span>
						</div>
					</div>
					<div class="description-sum">
						<p>${coffee.description_summary}</p>
					</div>
					<div class="type-wrapper">
							<c:choose>
								<c:when test="${coffee.type eq 'dark_roast'}">
									<div class="type">
									<div class="type-left">
										<img src="./img/icon/${coffee.type}.png"/>
									</div>
									<div class=type-right>
										<h3>다크 로스트</h3>
										<p>강렬하고 강인한 맛 Strong & Powerful</p>
									</div>		
									</div>
								</c:when>
								<c:when test="${coffee.type eq 'blond_roast'}">
									<div class="type">
									<div class="type-left">
										<img src="./img/icon/${coffee.type}.png"/>
									</div>
									<div class=type-right>
										<h3>블론드 로스트</h3>
										<p>은은하고 부드러운 맛 Subtle & Mellow</p>
									</div>
									</div>
								</c:when>
								<c:when test="${coffee.type eq 'medium_roast'}">
									<div class="type">
									<div class="type-left">
										<img src="./img/icon/${coffee.type}.png"/>
									</div>
									<div class=type-right>
										<h3>미디엄 로스트</h3>
										<p>균형잡힌 부드러움 Balance & Mellow</p>
									</div>
									</div>
								</c:when>
							</c:choose>
					</div>
					<div class="weight">
						<p>250g</p>
					</div>
					<div class="more">
						<img src="./img/icon/more_left.jpg"/>
						<img src="./img/icon/more_right.jpg"/>
					</div>
					
					<div class="icon">
						<%-- <div class="fb-share-button" 
			                data-href="https://ksh-starbucks-clone.herokuapp.com/coffee_bean_detail.jsp?seq=${coffee.seq}" 
			                data-layout="button_count"
			                data-size="small">
                		</div> --%>
                		<img src="./img/icon/facebook.png" data-seq="${coffee.seq} }"/>
					</div>
				</div>
			</div>
			
			<div class="context-bottom">
				
			</div>
		</div>
	</main>
	
	
	<jsp:include page="./footer.html"></jsp:include>
<script src="./js/menu.js"></script>
 <script src="./js/crud.js"></script>
  <script src="./js/share.js"></script>
</body>
</html>	