package com.pcwk.ehr.user.domain;


import com.pcwk.ehr.cmn.DTO;

public class MBTIVO extends DTO {
    int mbti;
    String mbtiType;
    String imgSrc;

    public MBTIVO(int mbti, String mbtiType, String imgSrc) {
        super();
        this.mbti = mbti;
        this.mbtiType = mbtiType;
        this.imgSrc = imgSrc;
    }

    public void printInfo(){
        System.out.println(mbti+"/"+mbtiType+"/"+imgSrc);
    }

    public int getMbti() {
        return mbti;
    }

    public void setMbti(int mbti) {
        this.mbti = mbti;
    }

    public String getMbtiType() {
        return mbtiType;
    }

    public void setMbtiType(String mbtiType) {
        this.mbtiType = mbtiType;
    }

    public String getImgSrc() {
        return imgSrc;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc;
    }
}
