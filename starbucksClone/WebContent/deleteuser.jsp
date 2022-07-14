<%@page import="starbucksClone.dao.CoffeeDao"%>
<jsp:useBean id="u" class="starbucksClone.bean.Coffee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
CoffeeDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>