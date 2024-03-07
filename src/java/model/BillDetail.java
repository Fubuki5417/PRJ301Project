/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author huyho
 */
public class BillDetail {
     int detail_id;
    int bill_id;
    Product product;
    int quantity;
    Float price;

    public BillDetail() {
    }

    public BillDetail(int detail_id, int bill_id, Product product, int quantity, String size, String color) {
        this.detail_id = detail_id;
        this.bill_id = bill_id;
        this.product = product;
        this.quantity = quantity;
    }
    
    public BillDetail(int detail_id, Product product, int quantity, String size, String color, Float price) {
        this.detail_id = detail_id;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public int getDetail_id() {
        return detail_id;
    }

    public void setDetail_id(int detail_id) {
        this.detail_id = detail_id;
    }

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }
}
