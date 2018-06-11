<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String pagename = request.getParameter("CONTENT");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
.Btn {
	border: none;
    color: white;
    padding: 10px 27px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.Btn:hover {
    background-color: #555555;
    color: white;
}
/* table{
	 background-color: rgba( 0, 0, 0, 0.5 );
	 maring:20px;
} */
</style>
<head>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Myeongjo');
body{
	font-family: 'Nanum Myeongjo', serif;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body>

<tr>
	<td>
		<center><h1>한자공부</h1> </center>
	</td>
</tr>
<tr>
	<td>
		<center><jsp:include page="top.jsp"/></center>
	</td>
</tr>
<tr >
	<td style="with:100%; height: 70%">
		<jsp:include page="<%=pagename%>" flush="false"/>
	</td>
</tr>
<tr>
	<td>
		<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>

</table>


</body>
</html>