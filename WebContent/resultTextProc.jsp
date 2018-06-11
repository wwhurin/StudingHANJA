<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	request.getParameter("UTF-8");
 	String filename = (String)session.getAttribute("FILE");

	String ID = "";
	//if(!request.getParameter("ID").equals(null)){ID=request.getParameter("ID");}
	ID=(String)session.getAttribute("ID");
 	
 	String filePath = application.getRealPath("/WEB-INF/notebook/"+ID+"/"+filename);
	BufferedReader br = new BufferedReader(new FileReader(filePath));
	//out.println(filePath);
	
	String str = "";
	
	Map <String, String> list = new HashMap<String, String>();
	while(true){
		str = br.readLine();
		if(str==null){ break; }
		String[] split = str.split("/");
		list.put(split[0], split[1]);
	}
	
	
	int cnt=0;
	int correct=0;
	Set set = list.keySet();
	Iterator iterator = set.iterator();
	while(iterator.hasNext()){
		String ckhan=iterator.next().toString();
		//out.println(ckhan);
		String mean=list.get(ckhan);
		//out.println(mean);
		String result = request.getParameter(String.valueOf(cnt));
		//out.print(result);
		//String result = request.getParameter(ckhan);
		//out.println(result);
		if(mean.equals(result)){ correct++;%>
			<p><%=cnt+1 %>번 문제 <%=ckhan %>, <%=result %> 맞추셨습니다.</p>
			
	<%	}else{%>
			<p><%=cnt+1 %>번 문제 <%=ckhan %>의 답은 <%=result %>이 아닌 <b><%=mean %></b>입니다.</p>
		<%}cnt++;
	}
	
	String filelink = application.getRealPath("/WEB-INF/result/"+ID+".txt");
	BufferedWriter bw = new BufferedWriter(new FileWriter(filelink, true));
	PrintWriter pw = new PrintWriter(bw, true);
	
	pw.printf(filename); pw.println();
	pw.printf(String.valueOf(correct)); pw.println();
 	
 %>