<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	request.setCharacterEncoding("UTF-8");
	String ID = (String)session.getAttribute("ID");
	
	String filename = request.getParameter("filename");
	String words = request.getParameter("words");

	String filePath = application.getRealPath("/WEB-INF/notebook/"+ID+"/"+filename);
	//out.println(filePath);
	BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true));
	PrintWriter pw = new PrintWriter(bw, true); 
	
	String[] cutWord=words.split("\\*");
	
	for(int i=0; i<cutWord.length; i++){
		pw.printf(cutWord[i]);
		pw.println();
	}
	
	//response.sendRedirect("plusPage.jsp");

%>