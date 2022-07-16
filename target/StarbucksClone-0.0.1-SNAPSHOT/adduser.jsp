<%@page import="starbucksClone.dao.CoffeeDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.*" %>
<%@page import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="u" class="starbucksClone.bean.Coffee"></jsp:useBean>
<%
String directory = application.getRealPath("/img/coffee_bean");
System.out.println(directory);
int sizeLimit = 100*1024*1024;

File filedir = new File(directory);
if(!filedir.exists()){
	System.out.println("폴더없음");
	filedir.mkdir();
}

MultipartRequest multi = new MultipartRequest(request, 
					directory, sizeLimit,"UTF-8", new DefaultFileRenamePolicy() );

u.setName_kr(multi.getParameter("name_kr"));
u.setName_en(multi.getParameter("name_en"));
u.setType(multi.getParameter("type"));
u.setDescription_summary(multi.getParameter("description_summary"));
u.setDescription_detail(multi.getParameter("description_detail"));
u.setDesign_story(multi.getParameter("design_story"));
u.setCoffee_tasting_note(multi.getParameter("coffee_tasting_note"));
u.setTasting_notes(multi.getParameter("tasting_notes"));
u.setEnjoy_with(multi.getParameter("enjoy_with"));
u.setRelative(multi.getParameter("relative"));

Enumeration files=multi.getFileNames();
String file =(String)files.nextElement();
String filename=multi.getFilesystemName(file);

System.out.println(file);
System.out.println(filename);
u.setFilename(filename);
u.setFilepath(directory);
int i=CoffeeDao.save(u);
if(i>0){
response.sendRedirect("index.jsp");
}else{
response.sendRedirect("adduserform.jsp");
}
%>