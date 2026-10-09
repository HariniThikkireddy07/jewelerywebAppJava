<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.jewellery.dao.ProductDAO" %>
<%@ page import="com.jewellery.model.Product" %>
<%@ page import="java.util.List" %>
<%
    ProductDAO dao = new ProductDAO();
    List<Product> featured = dao.getAllProducts().subList(0, 4);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumiera Jewels — Timeless Elegance</title>
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
                <li><a href="index.jsp" class="active">Home</a></li>
                <li><a href="products">Collections</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>

<section class="hero">
    <div class="hero-content">
        <h1>Timeless Elegance</h1>
        <p>Discover handcrafted jewellery that tells your story</p>
        <a href="products" class="btn">Explore Collection</a>
    </div>
</section>

<div class="container">
    <h2 class="section-title">Featured Pieces</h2>
    <p class="section-subtitle">Curated selections from our finest collections</p>

    <div class="products-grid">
        <% for (Product p : featured) { %>
            <div class="product-card">
                <img src="<%= p.getImageUrl() %>" alt="<%= p.getName() %>" class="product-image">
                <div class="product-info">
                    <div class="product-category"><%= p.getCategory() %></div>
                    <div class="product-name"><%= p.getName() %></div>
                    <div class="product-price"><%= p.getFormattedPrice() %></div>
                    <div class="product-actions">
                        <a href="products?id=<%= p.getId() %>" class="btn btn-small">View</a>
                    </div>
                </div>
            </div>
        <% } %>
    </div>

    <div class="features">
        <div class="feature-box">
            <div class="icon">💎</div>
            <h3>Certified Quality</h3>
            <p>Every piece comes with a certificate of authenticity</p>
        </div>
        <div class="feature-box">
            <div class="icon">🚚</div>
            <h3>Free Shipping</h3>
            <p>Complimentary insured delivery on all orders</p>
        </div>
        <div class="feature-box">
            <div class="icon">🔄</div>
            <h3>30-Day Returns</h3>
            <p>Not satisfied? Return within 30 days for full refund</p>
        </div>
        <div class="feature-box">
            <div class="icon">✨</div>
            <h3>Lifetime Care</h3>
            <p>Free polishing and cleaning for life</p>
        </div>
    </div>
</div>

<footer>
    <p class="gold">LUMIERA FINE JEWELLERY</p>
    <p>Crafting timeless treasures since 1995</p>
    <p>&copy; 2025 Lumiera Jewels. All rights reserved.</p>
</footer>

</body>
</html>
