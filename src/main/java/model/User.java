package model;

import java.util.Date;

public class User {
    private int userId;
    private int roleId;
    private String userName;
    private String fullName;
    private String email;
    private String phoneNumber;
    private int sex;
    private String address;
    private String password;
    private String numberBanking;
    private Date createdAt;
    private Date updatedAt;
    private String status;
    private String active;

    public User() {
    }

    public User(int userId, int roleId, String userName, String fullName, String email, String phoneNumber,
                int sex, String address, String password, String numberBanking, Date createdAt, Date updatedAt, String status, String active) {
        this.userId = userId;
        this.roleId = roleId;
        this.userName = userName;
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.sex = sex;
        this.address = address;
        this.password = password;
        this.numberBanking = numberBanking;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.status = status;
        this.active = active;
    }
//    public User(String userName, String fullName, String email, String phoneNumber,String password, Date createdAt, String active) {
//        this.userName = userName;
//        this.fullName = fullName;
//        this.email = email;
//        this.phoneNumber = phoneNumber;
//        this.password = password;
//        this.createdAt = createdAt;
//        this.active = active;
//    }


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNumberBanking() {
        return numberBanking;
    }

    public void setNumberBanking(String numberBanking) {
        this.numberBanking = numberBanking;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", roleId=" + roleId +
                ", userName='" + userName + '\'' +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", sex=" + sex +
                ", address='" + address + '\'' +
                ", password='" + password + '\'' +
                ", numberBanking='" + numberBanking + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                ", status='" + status + '\'' +
                ", active='" + active + '\'' +
                '}';
    }
}