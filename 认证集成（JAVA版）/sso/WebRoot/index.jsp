<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<%@page import="org.jasig.cas.client.validation.Assertion"%>
<%@page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>SSO</title>
  </head>
  <body>
		<%
		String loginName1 = request.getRemoteUser();
		%>
		request.getRemoteUser(): <%=loginName1%><br/>
		<%
		AttributePrincipal principal = (AttributePrincipal)request.getUserPrincipal();
		String loginName2 = principal.getName();
		%>
		request.getUserPrincipal().getName():<%=loginName2%><br/>
		<%
		         Object object =request.getSession().getAttribute("_const_cas_assertion_");
		         Assertion assertion =(Assertion)object;
		         String loginName3 =assertion.getPrincipal().getName();
		%>
		request.getSession().getAttribute("_const_cas_assertion_").getPrincipal().getName():<%=loginName3%><br/>
  		<%
  		// 以下代码取得more信息
		Map attributes = principal.getAttributes();
  		System.out.println(attributes);
		%>
		<textarea cols="160"><%=attributes %></textarea>
		<br/>
  		<a href="http://sso.scut.edu.cn/portal/logout?service=http://127.0.0.1:8080/sso">注销 [http://127.0.0.1:8080/sso]</a>
  </body>
</html>
