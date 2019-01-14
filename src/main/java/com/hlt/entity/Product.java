package com.hlt.entity;

public class Product {
    private Integer id;
    private String productname;
    private Integer price;
    private Integer number;
    private String description;

    public Product() { super(); }

    public Product(Integer id, String productname, Integer price, Integer number, String description) {
        super();
        this.id = id;
        this.productname = productname;
        this.price = price;
        this.number = number;
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", productname='" + productname + '\'' +
                ", price=" + price +
                ", number=" + number +
                ", description='" + description + '\'' +
                '}';
    }

    public Integer getNumber() { return number; }

    public void setNumber(Integer number) { this.number = number; }

    public Integer getId() { return id; }

    public void setId(Integer id) { this.id = id; }

    public String getProductname() { return productname; }

    public void setProductname(String productname) { this.productname = productname; }

    public Integer getPrice() { return price; }

    public void setPrice(Integer price) { this.price = price; }

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }
}
