<%@page import="com.hb.mybatis.DAO"%>

<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String idx = request.getParameter("idx");
    WebApplicationContext context = 
    WebApplicationContextUtils.getWebApplicationContext(application);
    DAO dao = (DAO)context.getBean("dao");
    int result = dao.getDelete(id, pwd);
	if(result>0){
		response.sendRedirect("list.jsp");
	}else{%>
		<script>
    		alert("삭제 실패");
    		history.go(-2);
    	</script>		
 <%}%>