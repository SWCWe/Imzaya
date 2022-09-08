package com.VO;

public class BoardVO {

    // 글 순번 
    private int articleSeq;

    // 글 제목 
    private String articleTitle;

    // 글 내용 
    private String articleContent;

    // 글 첨부파일 
    private String articleFile;

    // 글 작성일자 
    private String articleDate;

    // 글 작성자 
    private String mId;
    
    // 글 조회수
    private int articleCNT;

	public int getArticleSeq() {
		return articleSeq;
	}

	public void setArticleSeq(int articleSeq) {
		this.articleSeq = articleSeq;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public String getArticleFile() {
		return articleFile;
	}

	public void setArticleFile(String articleFile) {
		this.articleFile = articleFile;
	}

	public String getArticleDate() {
		return articleDate;
	}

	public void setArticleDate(String articleDate) {
		this.articleDate = articleDate;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public int getArticleCNT() {
		return articleCNT;
	}

	public void setArticleCNT(int articleCNT) {
		this.articleCNT = articleCNT;
	}

	public BoardVO(int articleSeq, String articleTitle, String articleContent, String articleFile, String articleDate,
			String mId, int articleCNT) {
		
		this.articleSeq = articleSeq;
		this.articleTitle = articleTitle;
		this.articleContent = articleContent;
		this.articleFile = articleFile;
		this.articleDate = articleDate;
		this.mId = mId;
		this.articleCNT = articleCNT;
	}
    
    
    


    
}


