<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String ID = (String) session.getAttribute("ID");

	String source = application.getRealPath("/WEB-INF/notebook/"+ID);
%>
<center>
<h3>단어장 목록</h3>

<%	
	File dir = new File(source); 
	File[] fileList = dir.listFiles(); 
	for(int i = 0 ; i < fileList.length ; i++){
		System.out.println("!!!");
		File file = fileList[i]; 
		if(file.isFile()){%>
		<p><%=file.getName() %>	</p>
<%		}
	}

%>

<hr>

<h3>맞춘 기록</h3>

<%

	String filePath = application.getRealPath("/WEB-INF/result/"+ID+".txt");
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	String str="";
	
	int cnt=0;
	while(true){
		str=br.readLine();
		if(str==null){break;}%>
		<p><%=str %></p>
	<%}
	//out.println(filePath);

%>



</center>