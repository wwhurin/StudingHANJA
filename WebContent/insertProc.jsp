<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

try{
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	PrintWriter writer = null;
	
		String filePath = application.getRealPath("/WEB-INF/user.txt");
		out.println(filePath);
		BufferedWriter bw = new BufferedWriter(new FileWriter(filePath, true));
		PrintWriter pw = new PrintWriter(bw, true);
		
		pw.printf("id/"); pw.println(); pw.printf(id); pw.println();
		pw.printf("pwd/"); pw.println(); pw.printf(pwd);
		
		pw.println();
		
		pw.flush();
		
	  String path = application.getRealPath("/WEB-INF/notebook/"+id);
        //파일 객체 생성
        File file = new File(path);
        //!표를 붙여주어 파일이 존재하지 않는 경우의 조건을 걸어줌
 
            //디렉토리 생성 메서드
           if(!file.mkdirs()){
            System.out.println("t!");
           }

		
		response.sendRedirect("Login.jsp");
	}catch(Exception e){
		out.println("오류발생");
	}

%>