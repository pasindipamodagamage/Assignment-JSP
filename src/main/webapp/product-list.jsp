<%@ page import="lk.ijse.DTO.EntityTM.ProductTM" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: pasindi
  Date: 1/21/25
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PawMart - Your Pet's Favorite Store</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
    <link rel="icon" href="css/assets/web_icon.png">
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="jsp/index.jsp">
            <i class="fas fa-paw me-2"></i>PawMart
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="admin-list.jsp"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Admin
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="admin-save.jsp"
                            >Registered Admin</a
                            >
                        </li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="admin-update.jsp"
                            >Update Customer</a
                            >
                        </li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="admin-delete.jsp"
                            >Remove Customer</a
                            >
                        </li>

                        <li><hr class="dropdown-divider" /></li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="admin-list.jsp"
                            >View Customer</a
                            >
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customer-list.jsp">Customer</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="product-list.jsp"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Product
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="product-save.jsp"
                            >Add Product</a
                            >
                        </li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="product-update.jsp"
                            >Update Product</a
                            >
                        </li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="product-delete.jsp"
                            >Remove Product</a
                            >
                        </li>

                        <li><hr class="dropdown-divider" /></li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="product-list.jsp"
                            >View Product</a
                            >
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="category-list.jsp"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="categories-save.jsp"
                            >Add Category</a
                            >
                        </li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="category-update.jsp"
                            >Update Category</a
                            >
                        </li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="category-delete.jsp"
                            >Remove Category</a
                            >
                        </li>

                        <li><hr class="dropdown-divider" /></li>
                        <li>
                            <a
                                    class="dropdown-item"
                                    href="category-list.jsp"
                            >View Category</a
                            >
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp">Orders</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5 mb-5">

    <!-- Products Section -->
    <section id="product" class="management-section mb-5">
        <div class="section-header mb-4">
            <h2 class="text-center">Product Management</h2>
        </div>
        <div class="row">
            <div class="col-md-7">
                <div class="table-container">
                    <%
                        List<ProductTM> productDataList = (List<ProductTM>) request.getAttribute("products");
                        if (productDataList != null && !productDataList.isEmpty()) {
                    %>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Description</th>
                            <th>Unit Price</th>
                            <th>Qty On Hand</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% for (ProductTM productTM : productDataList) {%>
                        <tr>
                            <td><%= productTM.getId()%>
                            </td>
                            <td><%= productTM.getDescription()%>
                            </td>
                            <td><%= productTM.getUnitPrice()%>
                            </td>
                            <td><%= productTM.getQtyOnHand()%>
                            </td>
                            </td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </section>
</div>
</div>

<!-- Footer -->
<footer class="bg-dark text-light py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>About PawMart</h5>
                <p>Your trusted source for premium pet supplies and accessories.</p>
            </div>
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <ul class="quick-links">
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="jsp/contact.jsp">Contact</a></li>
                    <li><a href="jsp/policy.jsp">Privacy Policy</a></li>
                    <li><a href="jsp/terms.jsp">Terms of Service</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Connect With Us</h5>
                <div class="social-links d-flex gap-3">
                    <a href="https://web.facebook.com" class="text-light"><i class="fab fa-facebook fa-lg"></i></a>
                    <a href="https://www.instagram.com" class="text-light"><i class="fab fa-instagram fa-lg"></i></a>
                    <a href="https://x.com" class="text-light"><i class="fab fa-twitter fa-lg"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div id="copyright">
        <span>Copyright © 2024 - All Rights Reserved |
            Developed with <i class="fas fa-heart heart-icon"></i> by Pasindi Pamoda Gamage</span>
    </div>
</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
