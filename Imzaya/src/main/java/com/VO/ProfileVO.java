package com.VO;

public class ProfileVO {
	
	// 회원 아이디 
    private String mId;

    // 회원 사진 
    private String mPhoto;

    // 회원 소개 
    private String mInfo;
    
    
    public ProfileVO(String mId, String mPhoto, String mInfo) {
		this.mId = mId;
		this.mPhoto = mPhoto;
		this.mInfo = mInfo;
	}


	public String getmId() {
		return mId;
	}


	public void setmId(String mId) {
		this.mId = mId;
	}


	public String getmPhoto() {
		return mPhoto;
	}


	public void setmPhoto(String mPhoto) {
		this.mPhoto = mPhoto;
	}


	public String getmInfo() {
		return mInfo;
	}


	public void setmInfo(String mInfo) {
		this.mInfo = mInfo;
	}
    
    

}
