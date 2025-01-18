<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PawMart - Your Pet's Favorite Store</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <style>
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
            url('/api/placeholder/1920/600') center/cover;
            height: 60vh;
            color: white;
        }

        .category-card {
            transition: transform 0.3s;
        }

        .category-card:hover {
            transform: translateY(-5px);
        }

        .feature-icon {
            font-size: 2.5rem;
            color: #FF6B6B;
        }

        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            color: #FF6B6B !important;
        }

        .modal-header {
            background-color: #FF6B6B;
            color: white;
        }

        .btn-primary {
            background-color: #FF6B6B;
            border-color: #FF6B6B;
        }

        .btn-primary:hover {
            background-color: #FF5252;
            border-color: #FF5252;
        }
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fas fa-paw me-2"></i>PawMart
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
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
            </ul>
            <div class="d-flex">
                <button class="btn btn-outline-primary me-2" data-bs-toggle="modal" data-bs-target="#loginModal">Login</button>
                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#registerModal">Register</button>
            </div>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section d-flex align-items-center">
    <div class="container text-center">
        <h1 class="display-4 mb-4">Welcome to PawMart</h1>
        <p class="lead mb-4">Your one-stop shop for all your pet's needs</p>
        <button class="btn btn-primary btn-lg">Shop Now</button>
    </div>
</section>

<!-- Categories Section -->
<section class="py-5">
    <div class="container">
        <h2 class="text-center mb-4">Shop by Category</h2>
        <div class="row g-4">
            <div class="col-md-3">
                <div class="card category-card">
                    <img src="/api/placeholder/300/200" class="card-img-top" alt="Food">
                    <div class="card-body text-center">
                        <h5 class="card-title">Pet Food</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card category-card">
                    <img src="/api/placeholder/300/200" class="card-img-top" alt="Toys">
                    <div class="card-body text-center">
                        <h5 class="card-title">Toys</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card category-card">
                    <img src="/api/placeholder/300/200" class="card-img-top" alt="Accessories">
                    <div class="card-body text-center">
                        <h5 class="card-title">Accessories</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card category-card">
                    <img src="/api/placeholder/300/200" class="card-img-top" alt="Health">
                    <div class="card-body text-center">
                        <h5 class="card-title">Health & Wellness</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Features Section -->
<section class="bg-light py-5">
    <div class="container">
        <div class="row g-4">
            <div class="col-md-4 text-center">
                <i class="fas fa-truck feature-icon mb-3"></i>
                <h4>Free Shipping</h4>
                <p>On orders over $50</p>
            </div>
            <div class="col-md-4 text-center">
                <i class="fas fa-headset feature-icon mb-3"></i>
                <h4>24/7 Support</h4>
                <p>Expert pet care advice</p>
            </div>
            <div class="col-md-4 text-center">
                <i class="fas fa-undo feature-icon mb-3"></i>
                <h4>Easy Returns</h4>
                <p>30-day return policy</p>
            </div>
        </div>
    </div>
</section>

<!-- Login Modal -->
<div class="modal fade" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Login to PawMart</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form action="login" method="POST">
                    <div class="mb-3">
                        <label for="loginEmail" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="loginEmail" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="loginPassword" class="form-label">Password</label>
                        <input type="password" class="form-control" id="loginPassword" name="password" required>
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Register Modal -->
<div class="modal fade" id="registerModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Create an Account</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form action="register" method="POST">
                    <div class="mb-3">
                        <label for="registerName" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="registerName" name="fullName" required>
                    </div>
                    <div class="mb-3">
                        <label for="registerEmail" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="registerEmail" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="registerPassword" class="form-label">Password</label>
                        <input type="password" class="form-control" id="registerPassword" name="password" required>
                    </div>
                    <div class="mb-3">
                        <label for="confirmPassword" class="form-label">Confirm Password</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Register</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-light py-4 mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>About PawMart</h5>
                <p>Your trusted source for premium pet supplies and accessories.</p>
            </div>
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-light">About Us</a></li>
                    <li><a href="#" class="text-light">Contact</a></li>
                    <li><a href="#" class="text-light">Privacy Policy</a></li>
                    <li><a href="#" class="text-light">Terms of Service</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Connect With Us</h5>
                <div class="d-flex gap-3">
                    <a href="#" class="text-light"><i class="fab fa-facebook fa-lg"></i></a>
                    <a href="#" class="text-light"><i class="fab fa-instagram fa-lg"></i></a>
                    <a href="#" class="text-light"><i class="fab fa-twitter fa-lg"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>