<%@ page import="lk.ijse.DTO.AdminDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.DTO.EntityTM.AdminTM" %><%--
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
                    <a class="nav-link" href="adminDashboard.jsp">Home</a>
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
    <!-- Admin Section -->
    <section id="admin" class="management-section mb-5">
        <h2 class="section-title mb-4">Admin Management</h2>
        <div class="row">
            <div class="col-md-5">
                <form class="management-form" action="admin-save-servlet" method="post">
                    <%--                    <div class="mb-3">--%>
                    <%--                        <label class="form-label">Admin ID</label>--%>
                    <%--                        <input type="text" class="form-control" required>--%>
                    <%--                    </div>--%>
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" required>
                    </div>
                    <%--                    <div class="mb-3">--%>
                    <%--                        <label class="form-label">Position</label>--%>
                    <%--                        <input type="text" class="form-control" value="admin" readonly>--%>
                    <%--                    </div>--%>
                    <div class="mb-3">
                        <label class="form-label">Contact</label>
                        <input type="tel" name="contact" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" name="userName" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <div class="button-group">
                        <button type="submit" class="btn btn-add"><i class="fas fa-plus"></i> Add</button>
                        <button type="button" class="btn btn-update"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
                    </div>
                </form>
            </div>
            <div class="col-md-7">
                <div class="table-container">
                    <%
                        List<AdminTM> adminList = (List<AdminTM>) request.getAttribute("admins");
                        if (adminList != null && !adminList.isEmpty()) {
                    %>
                    <table id="admin-list" class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Contact</th>
                            <th>Username</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% for (AdminTM admin : adminList) { %>
                        <tr>
                            <td><%= admin.getId() %></td>
                            <td><%= admin.getName() %></td>
                            <td><%= admin.getEmail() %></td>
                            <td><%= admin.getContact() %></td>
                            <td><%= admin.getUserName() %></td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table>
                    <% } else { %>
                    <p style="color: red;">No admin records found.</p>
                    <% } %>
                </div>
            </div>
        </div>
    </section>

    <!-- Customer Section -->
    <section id="customer" class="management-section mb-5">
        <div class="section-header mb-4">
            <h2 class="text-center">Customer Management</h2>
        </div>
        <div class="row">
            <div class="col-md-5">
                <form class="management-form" action="customer-save-servlet" method="post">
                    <%--                    <div class="mb-3">--%>
                    <%--                        <label class="form-label">Customer ID</label>--%>
                    <%--                        <input type="text" class="form-control" required>--%>
                    <%--                    </div>--%>
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Address</label>
                        <textarea class="form-control" name="address" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Position</label>
                        <input type="text" class="form-control" value="customer" readonly>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Contact</label>
                        <input type="tel" name="contact" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" name="userName" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <%--                    <div class="button-group">--%>
                    <%--                        <button type="submit" class="btn btn-add"><i class="fas fa-plus"></i> Add</button>--%>
                    <%--                        <button type="button" class="btn btn-update"><i class="fas fa-edit"></i> Update</button>--%>
                    <%--                        <button type="button" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>--%>
                    <%--                    </div>--%>
                </form>
            </div>
            <div class="col-md-7">
                <div class="table-container">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Contact</th>
                            <th>Username</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>C001</td>
                            <td>Jane Smith</td>
                            <td>123 Pet Lane, City</td>
                            <td>9876543210</td>
                            <td>jane_customer</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section id="categories" class="management-section mb-5">
        <div class="section-header mb-4">
            <h2 class="text-center">Category Management</h2>
        </div>
        <div class="row">
            <div class="col-md-5">
                <form class="management-form" action="category-save-servlet" method="post">
                    <%--                    <div class="mb-3">--%>
                    <%--                        <label class="form-label">Category ID</label>--%>
                    <%--                        <input type="text" class="form-control" required>--%>
                    <%--                    </div>--%>
                    <div class="mb-3">
                        <label class="form-label">Description</label>
                        <input type="text" name="description" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Category Image</label>
                        <input type="file" name="imgUrl" class="form-control">
                    </div>
                    <div class="button-group">
                        <button type="submit" class="btn btn-add"><i class="fas fa-plus"></i> Add</button>
                        <button type="button" class="btn btn-update"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
                    </div>
                </form>
            </div>
            <div class="col-md-7">
                <div class="table-container">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Description</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>CAT001</td>
                            <td>Dog Supplies</td>
                        </tr>
                        <tr>
                            <td>CAT002</td>
                            <td>Cat Supplies</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>


    <%--    --%>
    <!-- Products Section -->
    <section id="product" class="management-section mb-5">
        <div class="section-header mb-4">
            <h2 class="text-center">Product Management</h2>
        </div>
        <div class="row">
            <div class="col-md-5">
                <form class="management-form">
                    <%--                    <div class="mb-3">--%>
                    <%--                        <label class="form-label">Product ID</label>--%>
                    <%--                        <input type="text" class="form-control" required>--%>
                    <%--                    </div>--%>
                    <div class="mb-3">
                        <label class="form-label">Category</label>
                        <select class="form-select" name="categoryId" required>
                            <option value="">Select Category</option>
                            <option value="CAT001">Dog Supplies</option>
                            <option value="CAT002">Cat Supplies</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Description</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Unit Price</label>
                        <input type="number" step="0.01" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Quantity on Hand</label>
                        <input type="number" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Product Image</label>
                        <input type="file" class="form-control">
                    </div>
                    <div class="button-group">
                        <button type="submit" class="btn btn-add"><i class="fas fa-plus"></i> Add</button>
                        <button type="button" class="btn btn-update"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
                    </div>
                </form>
            </div>
            <div class="col-md-7">
                <div class="table-container">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Category</th>
                            <th>Description</th>
                            <th>Unit Price</th>
                            <th>Qty</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>P001</td>
                            <td>Dog Supplies</td>
                            <td>Dog Collar</td>
                            <td>$19.99</td>
                            <td>50</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

    <!-- Orders Section -->
    <section id="orders" class="management-section mb-5">
        <div class="section-header mb-4">
            <h2 class="text-center">Order Management</h2>
        </div>
        <div class="row">
            <div class="col-md-5">
                <form class="management-form">
                    <div class="mb-3">
                        <label class="form-label">Order ID</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Admin</label>
                        <select class="form-select" required>
                            <option value="">Select Admin</option>
                            <option value="A001">John Doe</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Customer</label>
                        <select class="form-select" required>
                            <option value="">Select Customer</option>
                            <option value="C001">Jane Smith</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Date</label>
                        <input type="date" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Cart</label>
                        <select class="form-select" required>
                            <option value="">Select Cart</option>
                            <option value="CART001">Cart 001</option>
                        </select>
                    </div>
                    <div class="button-group">
                        <button type="submit" class="btn btn-add"><i class="fas fa-plus"></i> Add</button>
                        <button type="button" class="btn btn-update"><i class="fas fa-edit"></i> Update</button>
                        <button type="button" class="btn btn-delete"><i class="fas fa-trash"></i> Delete</button>
                    </div>
                </form>
            </div>
            <div class="col-md-7">
                <div class="table-container">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Admin</th>
                            <th>Customer</th>
                            <th>Date</th>
                            <th>Cart</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>O001</td>
                            <td>John Doe</td>
                            <td>Jane Smith</td>
                            <td>2024-01-25</td>
                            <td>CART001</td>
                        </tr>
                        </tbody>
                    </table>
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
