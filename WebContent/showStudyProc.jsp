<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<center>
<%

	request.setCharacterEncoding("UTF-8");

	String ID = request.getParameter("ID");
	String filename = request.getParameter("filename"); %>
	
	<h1><%=filename %> 공부하기</h1><hr>
	
	<% 
	
	String filePath = application.getRealPath("/WEB-INF/notebook/"+ID+"/"+filename);
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	//out.println(file);
	String str = "";
	
	while(true){
		str=br.readLine();
		if(str==null){break;}
		String[] split = str.split("\\/");
		%>
		
		<h3><%=split[0] %></h3>
		<p><%=split[1] %></p>
		
		<%
	}

%>
</center>