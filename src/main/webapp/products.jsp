<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.jewellery.dao.ProductDAO" %>
<%@ page import="com.jewellery.model.Product" %>
<%@ page import="java.util.List" %>
<%
    ProductDAO dao = new ProductDAO();
    String category = request.getParameter("category");
    String search = request.getParameter("search");
    List<Product> products;
    if (search != null && !search.trim().isEmpty()) {
        products = dao.getAllProducts().stream()
                .filter(p -> p.getName().toLowerCase().contains(search.toLowerCase()))
                .collect(java.util.stream.Collectors.toList());
    } else {
        products = dao.getProductsByCategory(category);
    }
    List<String> categories = dao.getAllCategories();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Collections — Lumiera Jewels</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header>
    <div class="navbar">
        <a href="index.jsp" class="logo">
            LUMIERA
            <span>FINE JEWELLERY</span>
        </a>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="products" class="active">Collections</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="container">
    <h2 class="section-title">Our Collections</h2>
    <p class="section-subtitle">Handcrafted treasures for every occasion</p>

    <div class="filters">
        <a href="products" class="filter-btn <%= (category == null || category.isEmpty()) ? "active" : "" %>">All</a>
        <% for (String cat : categories) { %>
            <a href="products?category=<%= cat %>"
               class="filter-btn <%= cat.equalsIgnoreCase(category) ? "active" : "" %>"><%= cat %></a>
        <% } %>
    </div>

    <div class="products-grid">
        <% if (products.isEmpty()) { %>
            <p style="grid-column: 1/-1; text-align: center; color: #888; padding: 40px;">
                No products found.
            </p>
        <% } %>
        <% for (Product p : products) { %>
            <div class="product-card">
                <img src="<%= p.getImageUrl() %>" alt="<%= p.getName() %>" class="product-image">
                <div class="product-info">
                    <div class="product-category"><%= p.getCategory() %></div>
                    <div class="product-name"><%= p.getName() %></div>
                    <div class="product-price"><%= p.getFormattedPrice() %></div>
                    <div class="product-actions">
                        <a href="products?id=<%= p.getId() %>" class="btn btn-small">View Details</a>
                    </div>
                </div>
            </div>
        <% } %>
    </div>
</div>

<footer>
    <p class="gold">LUMIERA FINE JEWELLERY</p>
    <p>Crafting timeless treasures since 1995</p>
    <p>&copy; 2025 Lumiera Jewels. All rights reserved.</p>
</footer>

</body>
</html>
