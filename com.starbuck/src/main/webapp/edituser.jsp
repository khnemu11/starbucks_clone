<%@page import="com.starbuck.dao.CoffeeDao"%>
<jsp:useBean id="u" class="com.starbuck.bean.Coffee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=CoffeeDao.update(u);
response.sendRedirect("viewusers.jsp");
%>