<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = "";
	id = (String)session.getAttribute("ID");
%>    
<style>
body{
	width:100%;
	margin:0px;
	padding:0px;
}
#navbar {
  overflow: hidden;
  /* background-color: #ffffff; */
 /*  border-top : 1px solid #005500;
  border-bottom:  1px solid #005500; */
}

#navbar a {
  float: center;
  display: block;
  color: #111111;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 15px;
  margin:0px 20px;
}

#navbar a:hover {
  /* background-color: #ddd; */
  color: #111111;
  font-weight:bolder; 
}

#navbar a.active {
 /*  background-color: #005500; */
	 color: #111111;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 60px;
}

ul li{
	display: inline-block;
}

</style>


<center>
<div id="navbar">
	<ul>
		<li><a href="index.jsp">메인</a></li>
		<li><a href="study.jsp">한자 공부</a></li>
		<!-- <li><a href="shareStudy.jsp">공유 공부</a></li> -->
		<% if((id==null||id.equals(""))){   %>
			<li><a href="Login.jsp">로그인/회원가입</a></li>
		<% }else { %>
		<li><a href="showTest.jsp">테스트하기</a></li>
		<li><a href="test.jsp">단어장 테스트 만들기</a></li>
		<li><a href="myPage.jsp">마이페이지</a></li>
		<li><a href="Logout.jsp">로그아웃</a></li>
		<%} %>
	</ul>
</div>
</center>