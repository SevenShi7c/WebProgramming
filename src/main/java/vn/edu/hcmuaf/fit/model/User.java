package vn.edu.hcmuaf.fit.model;



public class User {
    String name;
    String email;
    String password;
    String tel;
    int id_type_user;
    String dob;
    int sex;
    String address;
    public User(String name, String email, String password, String tel, int id_type_user, String dob, int sex,
                String address) {
        super();
        this.name = name;
        this.email = email;
        this.password = password;
        this.tel = tel;
        this.id_type_user = id_type_user;
        this.dob = dob;
        this.sex = sex;
        this.address = address;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getTel() {
        return tel;
    }
    public void setTel(String tel) {
        this.tel = tel;
    }
    public int getId_type_user() {
        return id_type_user;
    }
    public void setId_type_user(int id_type_user) {
        this.id_type_user = id_type_user;
    }
    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
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
    @Override
    public String toString() {
        return "User [name=" + name + ", email=" + email + ", password=" + password + ", tel=" + tel + ", id_type_user="
                + id_type_user + ", dob=" + dob + ", sex=" + sex + ", address=" + address + "]";
    }

}