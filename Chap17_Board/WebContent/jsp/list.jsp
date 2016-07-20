<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "board.model.ArticleListModel" %>
<%@ page import = "board.service.ListArticleService" %>
<%
	String search = request.getParameter("search");
	int searchn = 0;
	if(search == null) {
		search = "";
	} else {
		searchn = Integer.parseInt(request.getParameter("searchn"));
	}

	String pageNumberString = request.getParameter("p");
	int pageNumber = 1;
	if(pageNumberString != null && pageNumberString.length() > 0) {
		pageNumber = Integer.parseInt(pageNumberString);
	}
	ListArticleService listService = ListArticleService.getInstance();
	ArticleListModel articleListModel;
	
	if(search.equals("") || search == null) {
		articleListModel = listService.getArticleList(pageNumber);
	} else {
		//검색으로 함수 하나 만들어야하나?
		articleListModel = listService.getArticleList(pageNumber,search,searchn);
	}
	request.setAttribute("listModel", articleListModel);
	
	if(articleListModel.getTotalPageCount() > 0) {
		int beginPageNumber = (articleListModel.getRequestPage()-1) / 10 * 10 + 1;
		int endPageNumber = beginPageNumber + 9;
		if(endPageNumber > articleListModel.getTotalPageCount()) {
			endPageNumber = articleListModel.getTotalPageCount();
		}
		request.setAttribute("beginPage", beginPageNumber);
		request.setAttribute("endPage", endPageNumber);
	}
%>
<jsp:forward page="list_view.jsp" />