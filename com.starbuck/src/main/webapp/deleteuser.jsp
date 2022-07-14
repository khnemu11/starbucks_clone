<%@page import="com.starbuck.dao.CoffeeDao"%>
<jsp:useBean id="u" class="com.starbuck.bean.Coffee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
CoffeeDao.delete(u);
response.sendRedirect("viewusers.jsp");
%>