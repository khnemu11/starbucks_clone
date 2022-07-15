<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
        <title>Starbucks</title>
        <link rel="stylesheet" type="text/css" href="./css/header.css">
        <link rel="stylesheet" type="text/css" href="./css/footer.css">
        <link rel="stylesheet" type="text/css" href="./css/coffeeBeanEdit.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="starbucksClone.dao.CoffeeDao"%>
<%@page import="starbucksClone.bean.Coffee"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
String seq=request.getParameter("seq");
Coffee coffee=CoffeeDao.getRecordBySeq(Integer.parseInt(seq));
request.setAttribute("coffee",coffee);
%>
<jsp:include page="./header.html"></jsp:include>
<main class="container-wrapper">
<form action="edituser.jsp" method="post">
<input type="hidden" name="seq" value="${coffee.seq}"/>
	<div class="container">
		<div class="container-name">
				<h2>스타벅스 원두</h2>
		</div>
			<div class="context-top">
				<div class="coffee-img">
					<img src="./img/coffee_bean/coffee_bean_${coffee.seq}.jpg"/>
				</div>
				<div class="coffee-description">
					<div class="name">
						<div class="name-left">
							<h3>한글 이름</h3><input type="text" name="name_kr" value="${coffee.name_kr}"/></h2>
							<h3>영어 이름</h3><input type="text" name="name_en" value="${coffee.name_en}"/>
						</div>
					</div>
					<div class="description-sum">
						<h3>커피 내용 요약</h3>
						<input type="text" name="description_summary" value="${coffee.description_summary}"/>
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
				
			</div>
		<%-- <form action="edituser.jsp" method="post">
		<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
		<table>
		<tr><td>type</td><td><input type="text" name="type" value="<%= u.getType()%>"/></td></tr>
		<tr><td>description summary</td><td><input type="text" name="description_summary" value="<%= u.getDescription_summary()%>"/></td></tr>
		<tr><td>description_detail</td><td><input type="text" name="description_detail" value="<%= u.getDescription_detail()%>"/></td></tr>
		<tr><td>design_story</td><td><input type="text" name="design_story" value="<%= u.getDesign_story()%>"/></td></tr>
		<tr><td>coffee_tasting_note</td><td><input type="text" name="coffee_tasting_note" value="<%= u.getCoffee_tasting_note()%>"/></td></tr>
		<tr><td>tasting_notes</td><td><input type="text" name="tasting_notes" value="<%= u.getTasting_notes()%>"/></td></tr>
		<tr><td>enjoy_with</td><td><input type="text" name="enjoy_with" value="<%= u.getEnjoy_with()%>"/></td></tr>
		<tr><td>relative</td><td><input type="text" name="relative" value="<%= u.getRelative()%>"/></td></tr>
		
		</td></tr>
		<tr><td colspan="2"><input type="submit" value="Edit Coffee"/></td></tr>
		</table>
		</form> --%>
	</div>
	</form>
</main>


<jsp:include page="./footer.html"></jsp:include>
</body>
</html>