package com.tmhi.entity;


import java.util.Date;

/**
 * 管理员实体类
 */
public class Admin implements java.io.Serializable {

    /**
     * 管理员ID
     */
    private int tuUid;

    /**
     * 管理员账号
     */
    private String tuMailAddress;

    /**
     * 管理员密码
     */
    private String tu_password;

    /**
     * 管理员加密盐
     */
    private String tuSalt;

    /**
     * 管理员状态
     */
    private String tuActicity;

    public Admin() {
        super();
    }

    public Admin(int tuUid, String tuMailAddress, String tu_password, String tuSalt, String tuActicity) {
        this.tuUid = tuUid;
        this.tuMailAddress = tuMailAddress;
        this.tu_password = tu_password;
        this.tuSalt = tuSalt;
        this.tuActicity = tuActicity;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "tuUid=" + tuUid +
                ", tuMailAddress='" + tuMailAddress + '\'' +
                ", tu_password='" + tu_password + '\'' +
                ", tuSalt='" + tuSalt + '\'' +
                ", tuActicity='" + tuActicity + '\'' +
                '}';
    }

    public int getTuUid() {
        return tuUid;
    }

    public void setTuUid(int tuUid) {
        this.tuUid = tuUid;
    }

    public String getTuMailAddress() {
        return tuMailAddress;
    }

    public void setTuMailAddress(String tuMailAddress) {
        this.tuMailAddress = tuMailAddress;
    }

    public String getTu_password() {
        return tu_password;
    }

    public void setTu_password(String tu_password) {
        this.tu_password = tu_password;
    }

    public String getTuSalt() {
        return tuSalt;
    }

    public void setTuSalt(String tuSalt) {
        this.tuSalt = tuSalt;
    }

    public String getTuActicity() {
        return tuActicity;
    }

    public void setTuActicity(String tuActicity) {
        this.tuActicity = tuActicity;
    }
}
