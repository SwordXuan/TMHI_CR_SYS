package com.tmhi.domain;


import javafx.scene.chart.PieChart;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.*;
import java.util.Date;

@Entity
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name = "TMHI_USERS")
public class User extends BaseDomain {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TU_UID")
    private int userId;

    @Column(name = "TU_MAILADDRESS")
    private String userMail;

    @Column(name = "TU_UNAME")
    private String userName;

    @Column(name = "TU_PASSWORD")
    private String userPwd;

    @Column(name = "TU_UGID")
    private String userGameName;

    @Column(name = "TU_SIGNUP_DATE")
    private Date userSignUpDate;

    @Column(name = "TU_ACTIVITY")
    private boolean userActivity;

    @Column(name = "TU_ACTIVITY_CODE")
    private String userActivityCode;

    @Column(name = "TU_ACTIVITY_DATE")
    private Date userActivityDate;

    @Column(name = "TU_PERMISSION")
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
