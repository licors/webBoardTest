<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import ="board.service.DeleteArticleService" %>
<jsp:useBean id="deleteRequest" class="board.model.DeleteRequest"/>
	<jsp:setProperty name="deleteRequest" property="*"/>
<%
	String viewPage = null;
	try {
		DeleteArticleService.getInstance().deleteArticle(deleteRequest);
		viewPage="delete_success.jsp";
	} catch(Exception ex) {
		request.setAttribute("deleteException",ex);
		viewPage ="delete_error.jsp";
	}
%>
<jsp:forward page="<%=viewPage%>"/>
