<%@page import="java.util.Random"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <h1>한자테스트</h1> 

<%
	request.setCharacterEncoding("UTF-8");
	
	String file = request.getParameter("file");
	String filename = request.getParameter("filename");
	String choice = request.getParameter("type");
	choice="1";
	
	String ID = "";
	//if(!request.getParameter("ID").equals(null)){ID=request.getParameter("ID");}
	ID=(String)session.getAttribute("ID");
	
	//request.setAttribute("ID", ID);
	
	session.setAttribute("FILE", filename);
	%>
	<form method="get" action="resultText.jsp?filename=<%=filename%>'">
	<%
	//파일 긁어오기
	Map <String, String> list = new HashMap<String, String>();
	Map <String, String> answer = new HashMap<String, String>();
	
	String filePath = application.getRealPath("/WEB-INF/notebook/"+ID+"/"+filename);
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	//out.println(file);
	String str = "";
	
	while(true){
		str = br.readLine();
		if(str==null){ break; }
		String[] split = str.split("/");
		list.put(split[0], split[1]);
	}
	//String str = br.readLine();
	Random random = new Random();
	int ck=0;
	String[] sp;
	String select="";
	int cnt=0;
	if(choice.equals("1")){
		Set set = list.keySet();
		Iterator iterator = set.iterator();
		while(iterator.hasNext()){ String ckhan=iterator.next().toString(); %>
		<h3><%=ckhan%></h3><%
			int ran2 = random.nextInt(5); //out.println(ran2);
			for(int j=0; j<5; j++){
				int ran = random.nextInt(30); //out.println(ran);
				String filelink = application.getRealPath("/WEB-INF/list.txt");
				BufferedReader br2 = new BufferedReader(new FileReader(filelink));
				if(j==ran2){
					select=list.get(ckhan);
				%><input type="radio" name="<%=cnt%>" value="<%=select%>"><%=select%></p><%
						}else{
				for(int i=0; i<=ran; i++){
					select=br2.readLine();
					//sp=select.split("*");
					//out.println(select);
				}
				String[] ss= select.split("\\*");%>
			<input type="radio" name="<%=cnt%>" value="<%=ss[1]%>"><%=ss[1]%></p>
			<%}
			}
			cnt++;
		}

	}
	
%>

<input type="submit" class="Btn" onclick="location='resultText.jsp?filename=<%=filename%>&ID=<%=ID %>'" value="제출하기">

</form>