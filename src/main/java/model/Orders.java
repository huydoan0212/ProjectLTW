package model;

import java.util.Date;

public class Orders {
    private int id;
    private int user_id;
    private String address;
    private String phone;
    private Date order_date;
    private String status;
    private String received_date;
    private int total_money;

    public Orders() {
    }

    public Orders(int id, int user_id, String address, String phone, Date order_date, String status, String received_date, int total_money) {
        this.id = id;
        this.user_id = user_id;
        this.address = address;
        this.phone = phone;
        this.order_date = order_date;
        this.status = status;
        this.received_date = received_date;
        this.total_money = total_money;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReceived_date() {
        return received_date;
    }

    public void setReceived_date(String received_date) {
        this.received_date = received_date;
    }

    public int getTotal_money() {
        return total_money;
    }

    public void setTotal_money(int total_money) {
        this.total_money = total_money;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", order_date=" + order_date +
                ", status='" + status + '\'' +
                ", received_date='" + received_date + '\'' +
                ", total_money=" + total_money +
                '}';
    }
}