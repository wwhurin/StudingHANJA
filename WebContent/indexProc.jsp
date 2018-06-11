<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="mainJS.jsp"></jsp:include>
<style>
.parallax_bax {
  height:700px;
  width: 100%;
}

.parallax{
	position:relative;
	height:100%;
	width: 100%;
	z-index:-1;
	top:-280;
	background-attachment: fixed;
}

.parallax.pa01{
 opacity: 0.5;
 filter: alpha(opacity=50); 
 background-color:darkblue;
 /* background-image:url('image/main.jpg'); */
 background-repeat: inherit;
 background-position: center;
 /* background-size: cover; */
}

.mainText h1{
	
	color: #2d2d2d;
	align-items:center;
	vertical-align:center;
	position:absolute;
	top:70%;
	left:43%;
}
</style>
<center>
<%
	String id = "";
	id = (String)session.getAttribute("ID");
%>

<div class="parallax_bax">
	<img src="back.jpg" class="parallax pa01">
	<div class="mainText">
		<center>
			<!-- <h1>함께&nbsp;&nbsp;하는<br>한자 &nbsp;&nbsp;공부<br><br>
			<span>공유한자</span><br><br>
			</h1> -->
		</center>
	</div>
</div>

	
</center>