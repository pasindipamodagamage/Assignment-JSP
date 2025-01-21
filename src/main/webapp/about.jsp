<%--
  Created by IntelliJ IDEA.
  User: pasindi
  Date: 1/18/25
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PawMart - Your Pet's Favorite Store</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/about.css">
    <link rel="icon" href="css/assets/web_icon.png">
</head>
<body>
<!-- Navigation bar remains the same as index.jsp -->
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
                    <a class="nav-link" href="product.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="categories.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About Us</a>
                </li>
            </ul>
            <div class="d-flex">
                <button class="btn btn-outline-primary me-2">Login</button>
                <button class="btn btn-primary">Register</button>
            </div>
        </div>
    </div>
</nav>


<!-- Hero Section -->
<section class="hero-section d-flex align-items-center">
    <div class="container text-center">
        <h1 class="display-4 mb-3">About PawMart 🐶🐾</h1>
        <p class="lead">Your Trusted Partner in Pet Care Since 2024</p>
    </div>
</section>

<!-- Mission Section -->
<section class="mission-section">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h2 class="mb-4">Our Mission</h2>
                <p class="lead">At PawMart, we're dedicated to enriching the lives of pets and their owners by providing premium quality products, expert advice, and exceptional service.</p>
                <p>We understand that pets are family, and they deserve nothing but the best. That's why we carefully curate our selection of products to ensure safety, quality, and value for our customers.</p>
            </div>
            <div class="col-md-6">
                <img src="https://images.unsplash.com/photo-1544568100-847a948585b9?w=600&h=400&fit=crop"
                     class="img-fluid rounded shadow" alt="Happy dog">
            </div>
        </div>
    </div>
</section>

<!-- Product Categories -->
<section class="category-section">
    <div class="container">
        <h2 class="text-center mb-5">Our Product Categories</h2>
        <div class="row g-4">
            <!-- Pet Food & Treats -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-bone me-2"></i>Pet Food & Treats
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Dry Food</li>
                        <li class="list-group-item">Wet Food</li>
                        <li class="list-group-item">Organic & Natural Food</li>
                        <li class="list-group-item">Treats & Chews</li>
                        <li class="list-group-item">Special Diet Food</li>
                    </ul>
                </div>
            </div>

            <!-- Pet Accessories -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-paw me-2"></i>Pet Accessories
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Collars, Leashes & Harnesses</li>
                        <li class="list-group-item">Bowls & Feeders</li>
                        <li class="list-group-item">Pet Beds & Mats</li>
                        <li class="list-group-item">Carriers & Crates</li>
                        <li class="list-group-item">Clothing & Costumes</li>
                    </ul>
                </div>
            </div>

            <!-- Pet Toys -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-baseball-ball me-2"></i>Pet Toys
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Chew Toys</li>
                        <li class="list-group-item">Interactive Toys</li>
                        <li class="list-group-item">Plush Toys</li>
                        <li class="list-group-item">Balls & Fetch Toys</li>
                        <li class="list-group-item">Scratching Posts</li>
                    </ul>
                </div>
            </div>

            <!-- Health & Wellness -->
            <div class="col-md-4 mt-4">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-heart me-2"></i>Health & Wellness
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Supplements & Vitamins</li>
                        <li class="list-group-item">Flea & Tick Control</li>
                        <li class="list-group-item">First Aid & Medications</li>
                        <li class="list-group-item">Calming Aids</li>
                        <li class="list-group-item">Dental Care</li>
                    </ul>
                </div>
            </div>

            <!-- Grooming & Hygiene -->
            <div class="col-md-4 mt-4">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-bath me-2"></i>Grooming & Hygiene
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Shampoos & Conditioners</li>
                        <li class="list-group-item">Brushes & Combs</li>
                        <li class="list-group-item">Nail Clippers & Files</li>
                        <li class="list-group-item">Ear & Eye Care</li>
                        <li class="list-group-item">Dental Care</li>
                    </ul>
                </div>
            </div>

            <!-- Training & Behavior -->
            <div class="col-md-4 mt-4">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-graduation-cap me-2"></i>Training & Behavior
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Training Pads & Litter Boxes</li>
                        <li class="list-group-item">Clickers & Training Aids</li>
                        <li class="list-group-item">Repellents & Attractants</li>
                        <li class="list-group-item">Behavior Modification Tools</li>
                        <li class="list-group-item">Training Guides</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Values Section -->
<section class="values-section">
    <div class="container text-center">
        <h2 class="mb-5">Why Choose PawMart?</h2>
        <div class="row g-4">
            <div class="col-md-4">
                <i class="fas fa-medal category-icon"></i>
                <h4>Premium Quality</h4>
                <p>We carefully select each product to ensure the highest quality for your pets.</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-tags category-icon"></i>
                <h4>Best Prices</h4>
                <p>Competitive prices and regular deals to give you the best value for money.</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-users category-icon"></i>
                <h4>Expert Support</h4>
                <p>Our knowledgeable team is always ready to help with your pet care needs.</p>
            </div>
        </div>
    </div>
</section>

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