<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
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

<script>
var list = document.getElementById("list");

var word1="";
var word2="";
function plusWord(hanja, hangle){
	var li=document.createElement("li");
	 li.appendChild(document.createTextNode(hanja+" : "+hangle));
	 li.setAttribute("id", hanja); // added line
	 list.appendChild(li);
	 alert(li.id);
	 word1+=hanja+"/"+hangle+"*";
	 word2=hangle;
}


function plusPage(){
	window.open("plusPage.jsp?words="+word1);
}

</script>

<ul class="card">
    <%
    	request.setCharacterEncoding("UTF-8");
    	String search = request.getParameter("search");
    	out.println(search);

    	Document doc = Jsoup.connect("https://hanja.dict.naver.com/search/word?query="+search+"&direct=false").get();

    	String title = doc.title();
    	
    	Elements elements = doc.select("div.result_nobg dl");
    	out.println(elements.get(0));
    	Element element = elements.get(0);
    	
    	
    /* 	Element element = elements.get(0);
    	Elements lis = element.select("a");
    	out.println(lis.get(1)); */
    
    %>
    
</ul>

<button onclick="plusPage()">추가하기</button>