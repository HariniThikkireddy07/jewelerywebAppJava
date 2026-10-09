<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.jewellery.model.Product" %>
<%
    Product product = (Product) request.getAttribute("product");
    if (product == null) {
        response.sendRedirect("products");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%= product.getName() %> — Lumiera Jewels</title>
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
    <div class="product-detail">
        <div>
            <img src="<%= product.getImageUrl() %>" alt="<%= product.getName() %>" class="product-detail-image">
        </div>
        <div class="product-detail-info">
            <div class="product-category"><%= product.getCategory() %></div>
            <h1><%= product.getName() %></h1>
            <div class="product-price"><%= product.getFormattedPrice() %></div>

            <div class="detail-meta">
                <p><strong>Material:</strong> <%= product.getMaterial() %></p>
                <p><strong>Category:</strong> <%= product.getCategory() %></p>
                <p><strong>SKU:</strong> LJ-<%= String.format("%04d", product.getId()) %></p>
                <p><strong>Availability:</strong> In Stock</p>
            </div>

            <p style="margin-bottom: 30px; color: #555;"><%= product.getDescription() %></p>

            <div style="display: flex; gap: 15px;">
                <a href="#" class="btn" onclick="alert('Item added to cart!'); return false;">Add to Cart</a>
                <a href="products" class="btn btn-outline">Back to Collection</a>
            </div>
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
