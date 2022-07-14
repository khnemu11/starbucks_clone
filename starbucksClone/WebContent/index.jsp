<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	   <meta charset="UTF-8">
        <title>Starbucks</title>
        <link rel="stylesheet" type="text/css" href="./css/header.css">
        <link rel="stylesheet" type="text/css" href="./css/footer.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<jsp:include page="./header.html"></jsp:include>
	
	<main class="container">
	<a href="adduserform.jsp">Add Coffee</a>
	<br>
	<a href="viewusers.jsp">View Coffees</a>
	</main>
	
	<jsp:include page="./footer.html"></jsp:include>
</body>
 <script src="./js/menu.js"></script>
</html>