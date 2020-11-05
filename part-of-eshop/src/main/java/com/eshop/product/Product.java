package com.eshop.product;

public class Product {
    private int id;
    private String barcode,color,name,description;


    public Product( String barcode, String color, String name, String description) {
        this.id = id;
        this.barcode = barcode;
        this.color = color;
        this.name = name;
        this.description = description;
    }

    public Product() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
