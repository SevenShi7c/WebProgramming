package vn.edu.hcmuaf.fit.model;

public class ProductModel {
    private int id;
    private String name;
    private String avatar;
    private long price;

    private int idBrand;

    private int idTypeProduct;

    private int idStatusDevice;

    private int sumQuantity;

    private String describe;

    private int idStore;

    public ProductModel() {
    }

    public ProductModel(int id, String name, String avatar, long price, int idBrand, int idTypeProduct, int idStatusDevice, int sumQuantity, String describe, int idStore) {
        this.id = id;
        this.name = name;
        this.avatar = avatar;
        this.price = price;
        this.idBrand = idBrand;
        this.idTypeProduct = idTypeProduct;
        this.idStatusDevice = idStatusDevice;
        this.sumQuantity = sumQuantity;
        this.describe = describe;
        this.idStore = idStore;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAvatar() {
        return avatar;
    }

    public long getPrice() {
        return price;
    }

    public int getIdBrand() {
        return idBrand;
    }

    public int getIdTypeProduct() {
        return idTypeProduct;
    }

    public int getIdStatusDevice() {
        return idStatusDevice;
    }

    public int getSumQuantity() {
        return sumQuantity;
    }

    public String getDescribe() {
        return describe;
    }

    public int getIdStore() {
        return idStore;
    }

    @Override
    public String toString() {
        return "ProductModel{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", avatar='" + avatar + '\'' +
                ", price=" + price +
                ", idBrand=" + idBrand +
                ", idTypeProduct=" + idTypeProduct +
                ", idStatusDevice=" + idStatusDevice +
                ", sumQuantity=" + sumQuantity +
                ", describe='" + describe + '\'' +
                ", idStore=" + idStore +
                '}';
    }
}
