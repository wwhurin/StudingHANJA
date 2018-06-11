<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.IOException"%>
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
   
 <h1>추가할 단어장을 택해주세요</h1> 
 
 
<p>새로운 단어장을 추가하고 싶으시다면  단어장 이름을 작성해주세요.</p>

<input type="text" id="wordname" placeholder="단어장 이름">
<input type="button" onclick="plusword()" value="입력하기">
   
<ul class="card">
<%
	request.setCharacterEncoding("UTF-8");
	String word= request.getParameter("words");
	
	String ID = (String)session.getAttribute("ID");
	
	//out.print(word);

	String fileDir = application.getRealPath("/WEB-INF/notebook/"+ID); 
	
	File dir = new File(fileDir); 
	//out.println(dir);
	File[] fileList = dir.listFiles(); 
	
	/* String filePath = application.getRealPath("/WEB-INF/user.txt");
	//out.println(filePath);
	BufferedWriter bw = new BufferedWriter(new FileWriter(fileDir, true));
	PrintWriter pw = new PrintWriter(bw, true); */
	
	
	if(fileList.length==0){ %>
		<li onclick="javascript:plus('기본.txt')">기본</li>
<%	}else{

	
	for(int i = 0 ; i < fileList.length ; i++){
		File file = fileList[i]; 
		if(file.isFile()){%>
		<li onclick="plus('<%=file.getName() %>')"><%=file.getName() %></li>
		<%}
	}
}
%>
</ul>


</center>
<script>
	function plus(str){
		location.href="plusWord.jsp?filename="+str+"&words=<%=word%>";
	}
	
	function plusword(){
		var word = document.getElementById("wordname");
		word=word.value+".txt"
		alert(word);
		location.href="plusWord.jsp?filename="+word+"&words=<%=word%>";
		alert("추가 완료되었습니다.");
	}
</script>