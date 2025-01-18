<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CYBER ASSIST - Computer Hardware Solutions</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
            url('https://images.unsplash.com/photo-1587831990711-23ca6441447b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 100px 0;
        }

        .feature-card {
            transition: transform 0.3s;
            margin-bottom: 20px;
        }

        .feature-card:hover {
            transform: translateY(-5px);
        }

        .category-card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            transition: transform 0.3s;
        }

        .category-card:hover {
            transform: scale(1.03);
        }

        .navbar-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: #0d6efd !important;
        }
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="#">CYBER ASSIST</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-primary ms-2" href="#">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section">
    <div class="container text-center">
        <h1 class="display-4 mb-4">Welcome to CYBER ASSIST</h1>
        <p class="lead mb-4">Your One-Stop Shop for Premium Computer Hardware</p>
        <div class="d-flex justify-content-center gap-3">
            <a href="#" class="btn btn-primary btn-lg">Shop Now</a>
            <a href="#" class="btn btn-outline-light btn-lg">Learn More</a>
        </div>
    </div>
</section>

<!-- Featured Categories -->
<section class="py-5">
    <div class="container">
        <h2 class="text-center mb-5">Popular Categories</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card category-card">
                    <img src="https://images.unsplash.com/photo-1591799264318-7e6ef8ddb7ea?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" class="card-img-top" alt="Processors">
                    <div class="card-body text-center">
                        <h5 class="card-title">Processors</h5>
                        <a href="#" class="btn btn-outline-primary">View All</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card category-card">
                    <img src="https://images.unsplash.com/photo-1587202372775-e229f172b9d7?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" class="card-img-top" alt="Graphics Cards">
                    <div class="card-body text-center">
                        <h5 class="card-title">Graphics Cards</h5>
                        <a href="#" class="btn btn-outline-primary">View All</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card category-card">
                    <img src="https://images.unsplash.com/photo-1562976540-1502c2145186?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80" class="card-img-top" alt="Storage">
                    <div class="card-body text-center">
                        <h5 class="card-title">Storage Devices</h5>
                        <a href="#" class="btn btn-outline-primary">View All</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Features Section -->
<section class="bg-light py-5">
    <div class="container">
        <h2 class="text-center mb-5">Why Choose Us</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card feature-card h-100 border-0 text-center">
                    <div class="card-body">
                        <i class="fas fa-shipping-fast fa-3x text-primary mb-3"></i>
                        <h5 class="card-title">Fast Shipping</h5>
                        <p class="card-text">Quick delivery to your doorstep</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card feature-card h-100 border-0 text-center">
                    <div class="card-body">
                        <i class="fas fa-user-shield fa-3x text-primary mb-3"></i>
                        <h5 class="card-title">Secure Shopping</h5>
                        <p class="card-text">Your security is our priority</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card feature-card h-100 border-0 text-center">
                    <div class="card-body">
                        <i class="fas fa-headset fa-3x text-primary mb-3"></i>
                        <h5 class="card-title">24/7 Support</h5>
                        <p class="card-text">Always here to help you</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card feature-card h-100 border-0 text-center">
                    <div class="card-body">
                        <i class="fas fa-undo fa-3x text-primary mb-3"></i>
                        <h5 class="card-title">Easy Returns</h5>
                        <p class="card-text">30-day return policy</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-dark text-light py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>CYBER ASSIST</h5>
                <p>Your trusted partner for computer hardware solutions.</p>
            </div>
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-light">About Us</a></li>
                    <li><a href="#" class="text-light">Products</a></li>
                    <li><a href="#" class="text-light">Contact</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Contact Us</h5>
                <p>Email: info@cyberassist.com<br>
                    Phone: (555) 123-4567</p>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap JS and Font Awesome -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/your-font-awesome-kit.js"></script>
</body>
</html>