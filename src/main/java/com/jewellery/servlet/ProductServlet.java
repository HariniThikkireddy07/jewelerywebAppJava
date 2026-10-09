package com.jewellery.servlet;

import com.jewellery.dao.ProductDAO;
import com.jewellery.model.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");
        String category = request.getParameter("category");
        String search = request.getParameter("search");

        if (idParam != null && !idParam.isEmpty()) {
            try {
                int id = Integer.parseInt(idParam);
                Product product = productDAO.getProductById(id);
                if (product != null) {
                    request.setAttribute("product", product);
                    request.getRequestDispatcher("/product-detail.jsp").forward(request, response);
                    return;
                }
            } catch (NumberFormatException e) {
                // fall through to listing
            }
        }

        request.setAttribute("products", productDAO.getProductsByCategory(category));
        request.setAttribute("categories", productDAO.getAllCategories());
        request.setAttribute("selectedCategory", category);
        request.setAttribute("searchQuery", search);
        request.getRequestDispatcher("/products.jsp").forward(request, response);
    }
}
