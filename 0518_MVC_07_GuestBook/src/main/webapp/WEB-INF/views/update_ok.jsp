
<%@page import="com.hb.mybatis.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="u_vo" class="com.hb.mybatis.VO" />
<jsp:setProperty property="*" name="u_vo"/>
<%
    WebApplicationContext context = 
    WebApplicationContextUtils.getWebApplicationContext(application);
    DAO dao = (DAO)context.getBean("dao");
    int result = dao.getUpdate(u_vo);
    if(result>0){
    	String idx = u_vo.getIdx();
    	response.sendRedirect("onelist.jsp?idx="+u_vo.getIdx());
    }else{%>
    	<script>
    		alert("업데이트 실패");
    		history.go(-1);
    	</script>	
    <%}%>

