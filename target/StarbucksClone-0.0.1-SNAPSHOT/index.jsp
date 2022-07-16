<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="starbucksClone.dao.CoffeeDao" %>
<%@page import="starbucksClone.bean.Coffee"%>
<%@page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	   <meta charset="UTF-8">
	   <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
        <title>커피 | Starbucks Korea</title>
         <link href="./img/logo.png" rel="shortcut icon" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="./css/header.css">
        <link rel="stylesheet" type="text/css" href="./css/footer.css">
        <link rel="stylesheet" type="text/css" href="./css/coffeeBeanList.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<jsp:include page="./header.html"></jsp:include>
	<%
	List<Coffee> list=CoffeeDao.getAllRecords();
	request.setAttribute("list",list);
	System.out.println("index jsp java load finish");
	%>
	<main class="container-wrapper">
	<div class="container">
		<div class="container-name">
		<h2>커피</h2>
		<span class="title-home">
			<span class="material-symbols-outlined home">home</span>&nbsp;
			<span> COFFEE > 커피</span>
			&nbsp;&nbsp;<a href="addCoffeeBeanForm.jsp"><span class="material-symbols-outlined add">add</span></a>
		</span>
		</div>
		<div class="coffee-wrapper">
			<div class="coffee-list">
				<div class="coffee-type">
					<img src="./img/icon/blond_roast.png"/><p>블론드 로스트</p>
				</div>
				<div class="coffee-bean-wrapper">
					<c:forEach items="${list}" var="u">	
					<c:choose>
						<c:when test="${u.type eq 'blond_roast'}">
								<span class="coffee_bean">
									<a href="./coffeeBeanDetail.jsp?seq=${u.seq}">
									<img src="./img/coffee_bean/coffee_bean_${u.seq}.jpg"/>
									</a>
									<span class="coffee_bean_name">${u.name_kr}</span>
								</span>
						</c:when>
					</c:choose>
					</c:forEach>
				</div>					
			</div>
		</div>
		<div class="coffee-wrapper">
			<div class="coffee-list">
				<div class="coffee-type">
					<img src="./img/icon/medium_roast.png"/><p>미디엄 로스트</p>
				</div>
				<div class="coffee-bean-wrapper">
					<c:forEach items="${list}" var="u">	
					<c:choose>
						<c:when test="${u.type eq 'medium_roast'}">
								<span class="coffee_bean">
									<a href="./coffeeBeanDetail.jsp?seq=${u.seq}">
									<img src="./img/coffee_bean/coffee_bean_${u.seq}.jpg"/>
									</a>
									<span class="coffee_bean_name">${u.name_kr}</span>
								</span>
						</c:when>
					</c:choose>
					</c:forEach>
				</div>					
			</div>
		</div>
		<div class="coffee-wrapper">
			<div class="coffee-list">
				<div class="coffee-type">
					<img src="./img/icon/dark_roast.png"/><p>다크 로스트</p>
				</div>
				<div class="coffee-bean-wrapper">
					<c:forEach items="${list}" var="u">	
					<c:choose>
						<c:when test="${u.type eq 'dark_roast'}">
								<span class="coffee_bean">
									<a href="./coffeeBeanDetail.jsp?seq=${u.seq}">
									<img src="./img/coffee_bean/coffee_bean_${u.seq}.jpg"/></a>
									<span class="coffee_bean_name">${u.name_kr}</span>
								</span>
						</c:when>
					</c:choose>
					</c:forEach>
				</div>					
			</div>
		</div>
		<div class="coffee-wrapper">
			<div class="coffee-list">
				<div class="coffee-type">
					<img src="./img/icon/reserve_roast.png"/><p>리저브 원두</p>
				</div>
				<div class="coffee-bean-wrapper">
					<c:forEach items="${list}" var="u">	
					<c:choose>
						<c:when test="${u.type eq 'reserve_roast'}">
								<span class="coffee_bean">
									<a href="./coffeeBeanDetail.jsp?seq=${u.seq}">
									<img src="./img/coffee_bean/coffee_bean_${u.seq}.jpg"/></a>
									<span class="coffee_bean_name">${u.name_kr}</span>
								</span>
						</c:when>
					</c:choose>
					</c:forEach>
				</div>					
				</div>
			</div>
		</div>
		</div>
	</div>
	</main>
	<jsp:include page="./footer.html"></jsp:include>
	 <script src="./js/menu.js"></script>
</body>

</html>	