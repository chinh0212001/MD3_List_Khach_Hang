package com.example.list_khach_hang;

public class Customer {
    private int stt;
    private String name;
    private String date;
    private String address;
    private String image;

    public Customer() {
    }

    public Customer(int stt, String name, String date, String address, String image) {
        this.stt = stt;
        this.name = name;
        this.date = date;
        this.address = address;
        this.image = image;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
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
