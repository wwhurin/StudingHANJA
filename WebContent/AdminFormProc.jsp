<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<style>

ul.card, ol.card{
	list-syle:none;
	margin:10px;
	padding:10px;
	height:100%;
	width:70%;  
}

ul.card li, ol.card li {
    display: inline-block;
    padding: 10px;
    margin: 5px;
    border: 1px solid #efefef;
    font-size: 12px;
    cursor: pointer;
}

ul.card li,
ol.card li {
    transition: background-color 0.3s linear;
}
  
ul.card li:hover,
ol.card li:hover {
    background-color: #f6f6f6;
}

</style>

<center>
<div id="get">
<ul class="card" id="list">
<script>


	function pass(filename){
		alert(filename);
	}
</script>

<%

//String ID = (String)session.getAttribute("ID");
String source="";

/* if(ID==null||ID.equals("")){ */
	source = application.getRealPath("/WEB-INF/notebook");
	
	File dir = new File(source); 
	File[] fileList = dir.listFiles(); 
		for(int i = 0 ; i < fileList.length ; i++){
			System.out.println("!!!");
			File file = fileList[i]; 
			if(file.isFile()){ 
				// 파일이 있다면 파일 이름 출력
			%>
		<li><%=file.getName() %></li>			
	<%	}else if(file.isDirectory()){ %>
		<br><b><%=file.getName() %>님의 기록</b><br><hr>
		<%
		String filePath = application.getRealPath("/WEB-INF/result/"+file.getName()+".txt");
		File f = new File(filePath);
		//out.println(filePath);
		if(f.isFile()){
			BufferedReader br = new BufferedReader(new FileReader(filePath));
			String str="";
			while(true){
				str=br.readLine();
				if(str==null){break;}%>
				<p><%=str %> </p>
			<%}
			}
		File intodir = new File(source+"/"+file.getName());
		File[] fileListinto = intodir.listFiles();
			for(int j=0; j<fileListinto.length; j++){
				File file2 = fileListinto[j]; 
				if(file2.isFile()){
			%>
				<li onclick="window.open('showStudyProc.jsp?ID=<%=file.getName()%>&file=<%=file2.toString()%>&filename=<%=file2.getName()%>')"><%=file2.getName() %></li>
			<%
				}
			}
	
		}
	}
//}
//out.println(source);
//subDirList(source); 

%>

</ul> 
</div>  
</center>