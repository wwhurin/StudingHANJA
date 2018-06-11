<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
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

String ID = (String)session.getAttribute("ID");
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
		<li onclick="pass('<%=file.toString()%>')"><%=file.getName() %></li>			
	<%	}else if(file.isDirectory()){ %>
		<br><b><%=file.getName() %>님의 메모장</b><br>
		<%
		File intodir = new File(source+"/"+file.getName());
		File[] fileListinto = intodir.listFiles();
			for(int j=0; j<fileListinto.length; j++){
				File file2 = fileListinto[j]; 
				if(file2.isFile()){
			%>
				<li onclick="location='showStudy.jsp?ID=<%=file.getName()%>&file=<%=file2.toString()%>&filename=<%=file2.getName()%>'"><%=file2.getName() %></li>
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