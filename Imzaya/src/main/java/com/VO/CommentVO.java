package com.VO;

public class CommentVO {

    // 댓글 순번 
    private int cmtSeq;

    // 원글 순번 
    private int articleSeq;

    // 댓글 내용 
    private String cmtContent;

    // 댓글 작성일자 
    private String cmtDate;

    // 댓글 작성자 
    private String mId;
    
	public CommentVO(int cmtSeq, int articleSeq, String cmtContent, String cmtDate, String mId) {
		this.cmtSeq = cmtSeq;
		this.articleSeq = articleSeq;
		this.cmtContent = cmtContent;
		this.cmtDate = cmtDate;
		this.mId = mId;
	}

	public int getCmtSeq() {
		return cmtSeq;
	}

	public void setCmtSeq(int cmtSeq) {
		this.cmtSeq = cmtSeq;
	}

	public int getArticleSeq() {
		return articleSeq;
	}

	public void setArticleSeq(int articleSeq) {
		this.articleSeq = articleSeq;
	}

	public String getCmtContent() {
		return cmtContent;
	}

	public void setCmtContent(String cmtContent) {
		this.cmtContent = cmtContent;
	}

	public String getCmtDate() {
		return cmtDate;
	}

	public void setCmtDate(String cmtDate) {
		this.cmtDate = cmtDate;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}
}
