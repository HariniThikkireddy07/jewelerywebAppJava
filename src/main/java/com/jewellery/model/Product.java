package com.jewellery.model;

public class Product {
    private int id;
    private String name;
    private String category;
    private double price;
    private String imageUrl;
    private String description;
    private String material;

    public Product(int id, String name, String category, double price,
                   String imageUrl, String description, String material) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.price = price;
        this.imageUrl = imageUrl;
        this.description = description;
        this.material = material;
    }

    // Getters
    public int getId() { return id; }
    public String getName() { return name; }
    public String getCategory() { return category; }
    public double getPrice() { return price; }
    public String getImageUrl() { return imageUrl; }
    public String getDescription() { return description; }
    public String getMaterial() { return material; }

    public String getFormattedPrice() {
        return String.format("₹%,.2f", price);
    }
}
