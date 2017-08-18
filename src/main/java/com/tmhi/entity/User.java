package com.tmhi.entity;


import java.util.Date;

/**
 * Author   :   Hiei
 * Time     :   2017/08/16
 * Explain  :   User实体类
 * Version  :   1.0
 */
public class User extends BaseDomain {

    /**
     * 用户ID
     */
    private int userId;

    /**
     * 注册邮箱
     */
    private String userMail;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 用户密码
     */
    private String userPwd;

    /**
     * 用户游戏名
     */
    private String userGameName;

    /**
     * 用户游戏舰队名
     */
    private String userFleetName;

    /**
     * 注册日期
     */
    private Date userSignUpDate;

    /**
     * 激活状态（0:未激活 1:已激活）
     */
    private boolean userActivity;

    /**
     * 激活码
     */
    private String userActivityCode;

    /**
     * 激活日期
     */
    private Date userActivityDate;

    /**
     * 用户权限（1:普通用户 2:管理用户）
     */
    private int userPermission;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserGameName() {
        return userGameName;
    }

    public void setUserGameName(String userGameName) {
        this.userGameName = userGameName;
    }

    public String getUserFleetName() {
        return userFleetName;
    }

    public void setUserFleetName(String userFleetName) {
        this.userFleetName = userFleetName;
    }

    public Date getUserSignUpDate() {
        return userSignUpDate;
    }

    public void setUserSignUpDate(Date userSignUpDate) {
        this.userSignUpDate = userSignUpDate;
    }

    public boolean isUserActivity() {
        return userActivity;
    }

    public void setUserActivity(boolean userActivity) {
        this.userActivity = userActivity;
    }

    public String getUserActivityCode() {
        return userActivityCode;
    }

    public void setUserActivityCode(String userActivityCode) {
        this.userActivityCode = userActivityCode;
    }

    public Date getUserActivityDate() {
        return userActivityDate;
    }

    public void setUserActivityDate(Date userActivityDate) {
        this.userActivityDate = userActivityDate;
    }

    public int getUserPermission() {
        return userPermission;
    }

    public void setUserPermission(int userPermission) {
        this.userPermission = userPermission;
    }
}
