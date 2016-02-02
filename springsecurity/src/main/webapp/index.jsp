<%@page import="org.springframework.security.core.userdetails.UserDetails"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@page import="org.springframework.security.core.context.SecurityContext"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
<%
SecurityContext	ctx=SecurityContextHolder.getContext(); 
 Authentication au=ctx.getAuthentication();
 Object o=au.getPrincipal();
 String userName="";
 if(o instanceof UserDetails){
	 userName=((UserDetails)o).getUsername();
 }else{
	 userName=o.toString(); 
 }
%>
<h2>首页欢迎你！<%=userName %></h2>
<sec:authorize ifAllGranted="ROLE_ADMIN">
	<a href="admin.jsp">进入admin.jsp页面</a>
</sec:authorize>
<a href="j_spring_security_logout">退出系统</a>
<%
	String [] names=session.getValueNames();
    for(int i=0;i<names.length;i++){
    	out.println(names[i]+"----"+session.getValue(names[i])+"\n");
    }
%>
</body>
</html>
