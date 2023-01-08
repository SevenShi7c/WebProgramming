package vn.edu.hcmuaf.fit.model;

public class DetailBookingModal {
    private int id_booking;
    private int id_product;
    private int quantity;

    public DetailBookingModal() {
    }

    public DetailBookingModal(int id_booking, int id_product, int quantity) {
        this.id_booking = id_booking;
        this.id_product = id_product;
        this.quantity = quantity;
    }

    public int getId_booking() {
        return id_booking;
    }

    public void setId_booking(int id_booking) {
        this.id_booking = id_booking;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
