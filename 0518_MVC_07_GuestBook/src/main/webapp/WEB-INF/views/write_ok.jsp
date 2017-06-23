
<%@page import="com.hb.mybatis.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
    
<%-- 파라미터값들 vo에 저장됨 --%>
<jsp:useBean id="vo" class="com.hb.mybatis.VO" />
<jsp:setProperty property="*" name="vo"/>
<%
   WebApplicationContext context =
   WebApplicationContextUtils.getWebApplicationContext(application);
   DAO dao = (DAO)context.getBean("dao");
   
  int result = dao.getInsert(vo);
    if(result>0){%>
    <script type="text/javascript">
       alert("삽입성공");
       location.href="list.jsp";
    </script>	
    <%}else{%>
     <script type="text/javascript">
      alert("삽입실패");
      history.go(-1);
    </script>	
  <%}%>
  
  
  