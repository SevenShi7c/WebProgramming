package vn.edu.hcmuaf.fit.model;


public class BookingModel {
    private String id;
    private String date_booking;
    private String id_customer;
    private String id_payment;
    private String description;
    private String status_booking;

    public BookingModel() {
        super();
        this.id = id;
        this.date_booking = date_booking;
        this.id_customer = id_customer;
        this.id_payment = id_payment;
        this.description = description;
        this.status_booking = status_booking;
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

    public String getStatus_booking() {
        return status_booking;
    }

    public void setStatus_booking(String status_booking) {
        this.status_booking = status_booking;
    }

    @Override
    public String toString() {
        return "BookingModel [id=" + id + ", date_booking=" + date_booking + ", id_customer=" + id_customer + ", id_payment=" + id_payment + ", description=" + description + ", status_booking=" + status_booking + "]";
    }

}

