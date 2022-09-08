package com.VO;

public class MeetVO {
     
	//모임 번호
	private int meetSeq;
	
	//모임 이름
	private String meetName;
	
	//모임 카테고리
	private String meetCategory;
	
	//모임 사진
	private String meetPhoto;
	
	//모임 설명
	private String meetContent;
	
	//모임 지역
	private String meetLocation;
	
	//모임 멤버 아이디
	private String mId;

	public MeetVO(int meetSeq, String meetName, String meetCategory, String meetPhoto, String meetContent,
			String meetLocation, String mId) {
		
		this.meetSeq = meetSeq;
		this.meetName = meetName;
		this.meetCategory = meetCategory;
		this.meetPhoto = meetPhoto;
		this.meetContent = meetContent;
		this.meetLocation = meetLocation;
		this.mId = mId;
	}

	public int getMeetSeq() {
		return meetSeq;
	}

	public void setMeetSeq(int meetSeq) {
		this.meetSeq = meetSeq;
	}

	public String getMeetName() {
		return meetName;
	}

	public void setMeetName(String meetName) {
		this.meetName = meetName;
	}

	public String getMeetCategory() {
		return meetCategory;
	}

	public void setMeetCategory(String meetCategory) {
		this.meetCategory = meetCategory;
	}

	public String getMeetPhoto() {
		return meetPhoto;
	}

	public void setMeetPhoto(String meetPhoto) {
		this.meetPhoto = meetPhoto;
	}

	public String getMeetContent() {
		return meetContent;
	}

	public void setMeetContent(String meetContent) {
		this.meetContent = meetContent;
	}

	public String getMeetLocation() {
		return meetLocation;
	}

	public void setMeetLocation(String meetLocation) {
		this.meetLocation = meetLocation;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}
	
	
}
