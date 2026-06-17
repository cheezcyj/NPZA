package com.pcwk.ehr.share;

public class ShareVO {

    public int seq;

    public String userId;

    public String url;

    public String date;

    public String getId() {
        return userId;
    }

    public void setId(String id) {
    	userId = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

	@Override
	public String toString() {
		return "ShareVO [userId=" + userId + ", url=" + url + "]";
	}

    
}
