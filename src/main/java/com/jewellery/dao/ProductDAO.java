package com.jewellery.dao;

import com.jewellery.model.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {
    private static final List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "Diamond Solitaire Ring", "Rings", 45999.00,
                "https://images.unsplash.com/photo-1605100804763-247f67b3557e?w=500",
                "A stunning 18K white gold ring with a brilliant-cut solitaire diamond.",
                "18K White Gold, Diamond"));

        products.add(new Product(2, "Gold Chain Necklace", "Necklaces", 28999.00,
                "https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?w=500",
                "Elegant 22K gold chain necklace, perfect for everyday wear.",
                "22K Yellow Gold"));

        products.add(new Product(3, "Ruby Stud Earrings", "Earrings", 15499.00,
                "https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?w=500",
                "Beautiful ruby studs set in 14K rose gold with diamond accents.",
                "14K Rose Gold, Ruby"));

        products.add(new Product(4, "Pearl Bracelet", "Bracelets", 8999.00,
                "https://images.unsplash.com/photo-1611591437281-460bfbe1220a?w=500",
                "Classic freshwater pearl bracelet with sterling silver clasp.",
                "Sterling Silver, Pearl"));

        products.add(new Product(5, "Emerald Pendant", "Pendants", 35999.00,
                "https://images.unsplash.com/photo-1611652022419-a9419f74343d?w=500",
                "Luxurious emerald pendant set in 18K yellow gold.",
                "18K Gold, Emerald"));

        products.add(new Product(6, "Diamond Tennis Bracelet", "Bracelets", 89999.00,
                "https://images.unsplash.com/photo-1573408301185-9146fe634ad0?w=500",
                "Exquisite diamond tennis bracelet with 50 round-cut diamonds.",
                "18K White Gold, Diamond"));

        products.add(new Product(7, "Gold Hoop Earrings", "Earrings", 12499.00,
                "https://images.unsplash.com/photo-1630019852942-f89202989a59?w=500",
                "Stylish 18K gold hoop earrings with a modern minimalist design.",
                "18K Yellow Gold"));

        products.add(new Product(8, "Sapphire Ring", "Rings", 55999.00,
                "https://images.unsplash.com/photo-1603561591411-07134e71a2a9?w=500",
                "Regal blue sapphire ring surrounded by sparkling diamonds.",
                "Platinum, Sapphire, Diamond"));
    }

    public List<Product> getAllProducts() {
        return new ArrayList<>(products);
    }

    public Product getProductById(int id) {
        return products.stream()
                .filter(p -> p.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public List<Product> getProductsByCategory(String category) {
        if (category == null || category.isEmpty()) {
            return getAllProducts();
        }
        return products.stream()
                .filter(p -> p.getCategory().equalsIgnoreCase(category))
                .collect(Collectors.toList());
    }

    public List<String> getAllCategories() {
        return products.stream()
                .map(Product::getCategory)
                .distinct()
                .sorted()
                .collect(Collectors.toList());
    }
}
