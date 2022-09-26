package rikkei.academy.md3_b10_bt1;

public class Student {
    private String name;
    private String date;
    private String address;
    private String image;

    public Student() {
    }

    public Student(String name, String date, String address, String image) {
        this.name = name;
        this.date = date;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
