<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="board.service.UpdateArticleService" %>
<%@ page import ="board.model.Article"%>
<%  request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="updateRequest" class="board.model.UpdateRequest"/>
	<jsp:setProperty name="updateRequest" property="*" />
<%
	String viewPage = null;
	try {
		Article article = UpdateArticleService.getInstance().update(updateRequest);
		request.setAttribute("updateArticle", article);
		viewPage="update_success.jsp";
		
	} catch(Exception e) {
		request.setAttribute("updateException", e);
		viewPage = "update_error.jsp";
	}
%>
<jsp:forward page="<%=viewPage%>"/>