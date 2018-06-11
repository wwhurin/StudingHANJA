<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String fortest =null;
	
	/* if(fortest.equals(null)){
		fortest="serchForm.jsp";
	} */
	//out.println(fortest);
%>

<center>
	<h1>한자 단어장 만들기</h1>
	
	
	<div>
		<jsp:include page="searchForm.jsp" flush="false"/><br><br>
		
		<div id="result">
			<ul id="list" class="card">
			
			</ul>
		</div>
		
		<div id="context">
	<% 	if(request.getParameter("forshare")!=null){
		fortest=request.getParameter("forshare");%>
		<jsp:include page="<%=fortest %>" flush="false"/>
	<% }%>
		</div>
	</div>
	
	
</center>