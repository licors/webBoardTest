<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.service.ReplyArticleService" %>
<%@ page import="board.model.Article" %>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="replyingRequest" class="board.model.ReplyingRequest"/>
 	<jsp:setProperty name="replyingRequest" property="*" />
<% 
	String viewPage = null;
	try {
		Article postedArticle = ReplyArticleService.getInstance().reply(replyingRequest);
		request.setAttribute("postedArticle", postedArticle);
		viewPage = "reply_success.jsp";
	} catch(Exception ex) {
		viewPage = "reply_error.jsp";
		request.setAttribute("replyException", ex);
	}
%>
<jsp:forward page="<%=viewPage %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>