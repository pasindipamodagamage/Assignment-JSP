<%--
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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">
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
                <li class="nav-item">
                    <a class="nav-link" href="#admin">Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#customer">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#product">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#categories">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#orders">Orders</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


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
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="policy.jsp">Privacy Policy</a></li>
                    <li><a href="terms.jsp">Terms of Service</a></li>
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