package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class BookingModel {
    private String id;
    private String date_booking;
    private String id_customer;
    private String id_payment;
    private String description;
    private int status_booking;
    private String username;
    private String nameTypePayment;
    private String tel;


    public BookingModel() {
        super();
    }

    public BookingModel(String id, String date_booking, String id_customer, String username, String id_payment, String nameTypePayment, String description, int status_booking) {
        this.id = id;
        this.date_booking = date_booking;
        this.id_customer = id_customer;
        this.id_payment = id_payment;
        this.description = description;
        this.status_booking = status_booking;
        this.username = username;
        this.nameTypePayment = nameTypePayment;
    }

    public BookingModel(String id, String date_booking, String id_customer, String id_payment, String description, int status_booking, String username, String nameTypePayment, String tel) {
        this.id = id;
        this.date_booking = date_booking;
        this.id_customer = id_customer;
        this.id_payment = id_payment;
        this.description = description;
        this.status_booking = status_booking;
        this.username = username;
        this.nameTypePayment = nameTypePayment;
        this.tel = tel;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDate_booking() {
        return date_booking;
    }

    public void setDate_booking(String date_booking) {
        this.date_booking = date_booking;
    }

    public String getId_customer() {
        return id_customer;
    }

    public void setId_customer(String id_customer) {
        this.id_customer = id_customer;
    }

    public String getId_payment() {
        return id_payment;
    }

    public void setId_payment(String id_payment) {
        this.id_payment = id_payment;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus_booking() {
        return status_booking;
    }

    public void setStatus_booking(int status_booking) {
        this.status_booking = status_booking;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNameTypePayment() {
        return nameTypePayment;
    }

    public void setNameTypePayment(String nameTypePayment) {
        this.nameTypePayment = nameTypePayment;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "BookingModel [id=" + id + ", date_booking=" + date_booking + ", id_customer=" + id_customer + ", id_payment=" + id_payment + ", description=" + description + ", status_booking=" + status_booking + "]";
    }

}