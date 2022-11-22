package vn.edu.hcmuaf.fit.model;

public class Product {
    int id;
    String name;
    String img;
    long price;

    int brand;
    
    int type_product;

    int status_device;

    int sumQuantity;

    public Product() {
    }

    public Product(int id, String name, String img, int type_product, int status_device, int brand, long price, int sumQuantity) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.brand = brand;
        this.type_product = type_product;
        this.status_device = status_device;
        this.sumQuantity = sumQuantity;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImg() {
        return img;
    }

    public long getPrice() {
        return price;
    }

    public int getBrand() {
        return brand;
    }

    public int getType_product() {
        return type_product;
    }

    public int getStatus_device() {
        return status_device;
    }

    public int getSumQuantity() {
        return sumQuantity;
    }
}
