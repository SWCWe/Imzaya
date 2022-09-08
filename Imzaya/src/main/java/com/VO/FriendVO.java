package com.VO;

public class FriendVO {
    // 친구 순번 
    private int fSeq;

    // 내 아이디 
    private String mId;

    // 친구 아이디 
    private String fId;

    // 친구 닉네임 
    private String fNick;

    // 친구 이미지 
    private String fPhoto;

	public FriendVO(int fSeq, String mId, String fId, String fNick, String fPhoto) {
		super();
		this.fSeq = fSeq;
		this.mId = mId;
		this.fId = fId;
		this.fNick = fNick;
		this.fPhoto = fPhoto;
	}

	public int getfSeq() {
		return fSeq;
	}

	public void setfSeq(int fSeq) {
		this.fSeq = fSeq;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getfId() {
		return fId;
	}

	public void setfId(String fId) {
		this.fId = fId;
	}

	public String getfNick() {
		return fNick;
	}

	public void setfNick(String fNick) {
		this.fNick = fNick;
	}

	public String getfPhoto() {
		return fPhoto;
	}

	public void setfPhoto(String fPhoto) {
		this.fPhoto = fPhoto;
	}
    
    
    
}




