<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Form</title>
</head>
<body>
<%@page import="starbucksClone.dao.CoffeeDao"%>
<%@page import="starbucksClone.bean.Coffee"%>
<%
String seq=request.getParameter("seq");
Coffee u=CoffeeDao.getRecordBySeq(Integer.parseInt(seq));
%>

<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><td>Name Korean:</td><td><input type="text" name="name_kr" value="<%= u.getName_kr()%>"/></td></tr>
<tr><td>Name English</td><td><input type="text" name="name_en" value="<%= u.getName_en()%>"/></td></tr>
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
</form>

</body>
</html>