<% request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="starbucksClone.dao.CoffeeDao"%>
<jsp:useBean id="u" class="starbucksClone.bean.Coffee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
System.out.println(u.getName_kr());
int i=CoffeeDao.update(u);
response.sendRedirect("./coffee_bean_detail.jsp?seq="+u.getSeq());
%>