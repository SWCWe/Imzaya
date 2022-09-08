package com.VO;

public class MessageVO {
	
	 // 메시지 순번 
	 private int msgSeq;

	 // 메시지 내용 
	 private String msgContent;

	 // 발신자 아이디 
	 private String senderId;

	 // 수신자 아이디 
	 private String receiverId;
	 
	// 보낸 날짜 
	 private String msgDate;
	 
	 // 생성자
	public MessageVO(int msgSeq, String msgContent, String senderId, String receiverId, String msgDate) {

		this.msgSeq = msgSeq;
		this.msgContent = msgContent;
		this.senderId = senderId;
		this.receiverId = receiverId;
		this.msgDate = msgDate;
	}

	 public int getMsgSeq() {
		return msgSeq;
	}

	public void setMsgSeq(int msgSeq) {
		this.msgSeq = msgSeq;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public String getSenderId() {
		return senderId;
	}

	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}

	public String getReceiverId() {
		return receiverId;
	}

	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}

	public String getMsgDate() {
		return msgDate;
	}

	public void setMsgDate(String msgDate) {
		this.msgDate = msgDate;
	}






}


