<%@page import="starbucksClone.dao.CoffeeDao"%>
<jsp:useBean id="u" class="starbucksClone.bean.Coffee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=CoffeeDao.update(u);
response.sendRedirect("viewusers.jsp");
%>