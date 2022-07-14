<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>View Users</title>
</head>
<body>

<%@page import="starbucksClone.dao.CoffeeDao,starbucksClone.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Coffee List</h1>

<%
List<Coffee> list=CoffeeDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Seq</th><th>Name(kr)</th><th>getName_en</th><th>getSummary</th>
<th>getDescription_detail</th><th>getDesign_story</th>
<th>getCoffee_tasting_notes</th><th>tasting_note</th><th>getEnjoy_with</th><th>getRelative</th>
<th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr>
	<td>${u.getSeq()}</td>
	<td>${u.getName_kr()}</td>
	<td>${u.getName_en()}</td>
	<td>${u.getType()}</td>
	<td>${u.getDescription_summary()}</td>
	<td>${u.getDescription_detail()}</td>
	<td>${u.getDesign_story()}</td>
	<td>${u.getCoffee_tasting_note()}</td>
	<td>${u.getTasting_notes()}</td>
	<td>${u.getEnjoy_with()}</td>
	<td>${u.getRelative()}</td>

	<td><a href="editform.jsp?seq=${u.getSeq()}">Edit</a></td>
	<td><a href="deleteuser.jsp?seq=${u.getSeq()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New Coffee</a>

</body>
</html>