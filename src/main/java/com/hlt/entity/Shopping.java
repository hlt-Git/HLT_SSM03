package com.hlt.entity;

public class Shopping {
    private Integer id;
    private String productname;
    private Integer price;
    private Integer amount;
    private String description;

    public Shopping() { super(); }

    public Shopping(Integer id, String productname, Integer price, Integer amount, String description) {
        this.id = id;
        this.productname = productname;
        this.price = price;
        this.amount = amount;
        this.description = description;
    }

    @Override
    public String toString() {
        return "Shopping{" +
                "id=" + id +
                ", productname='" + productname + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }

    public Integer getId() { return id; }

    public void setId(Integer id) { this.id = id; }

    public String getProductname() { return productname; }

    public void setProductname(String productname) { this.productname = productname; }

    public Integer getPrice() { return price; }

    public void setPrice(Integer price) { this.price = price; }

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }
}
