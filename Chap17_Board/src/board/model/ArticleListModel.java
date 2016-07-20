package board.model;

import java.util.Collections;
import java.util.List;

public class ArticleListModel {
	private List<Article> articleList;
	private int requestPage;
	private int totalPageCount;
	private int startRow;
	private int endRow;
	
	public ArticleListModel() {
		this(Collections.<Article>emptyList(),0,0,0,0);
	}

	public ArticleListModel(List<Article> articleList, int requestPageNumber, int totalPageCount, int startRow, int endRow) {
		// TODO Auto-generated constructor stub
		this.articleList = articleList;
		this.requestPage = requestPageNumber;
		this.totalPageCount = totalPageCount;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	
	public List<Article> getArticleList() {
		return articleList;
	}
	
	public boolean isHasArticle() {
		return !articleList.isEmpty();
	}
	
	public int getRequestPage() {
		return requestPage;
	}
	
	public int getTotalPageCount() {
		return totalPageCount;
	}
	
	public int getStartRow() {
		return startRow;
	}
	
	public int getEndRow() {
		return endRow;
	}
}

