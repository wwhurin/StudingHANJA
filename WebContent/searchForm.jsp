<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


<script>
/* 
var search = document.getElementById("search");
var searchName=search.value;

function test(){ 

	var search = document.getElementById("search");
	var searchName="search="+search.value;
	
	alert(searchName);
	   $.ajax({ 
		    data: searchName,
	        type: 'get',
	        url: 'testSearch.jsp',
	        success: function(data){
	        	var printdata = data.split("<ul id='list' class='card'></ul>");
	        	alert(printdata)
	        	 document.getElementById("context").innerHTML = data;
	        }
	   });
	    return false; //<- 이 문장으로 새로고침(reload)이 방지됨
	} */
</script>

<form action="testSearch.jsp">
	<input type="text" name="search">
	<input type="submit" class="Btn" id="form_submit" value="검색">
</form>