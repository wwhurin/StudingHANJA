<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	request.setCharacterEncoding("UTF-8");
	
 	String file = request.getParameter("file");
 	String filename = request.getParameter("filename");
 	String ID="";
 	//String ID = (String)session.getAttribute("ID");
 	//if(!request.getParameter("ID").equals(null)){ID=request.getParameter("ID");}
 	//else {}
 %>
 
 <center>
	<h1>테스트하기</h1>
	 
	 현재 <b><%=filename%></b>단어장을 택하셨습니다.<br>
	 원하시는 테스트가 맞다면 테스트하기를 눌러주세요.<br>
	 
	<form>
		<input type="button" class="Btn" onclick="location='startTest.jsp?ID=<%=ID%>&file=<%=file %>&filename=<%=filename %>'" value="테스트하기">
	</form>
</center>