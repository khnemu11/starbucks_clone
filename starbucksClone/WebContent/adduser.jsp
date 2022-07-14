<%@page import="com.starbuck.dao.CoffeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="starbucksClone.bean.Coffee"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=CoffeeDao.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>