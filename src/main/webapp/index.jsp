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
                    <a class="nav-link" href="product.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="categories.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About Us</a>
                </li>
            </ul>
            <div class="d-flex align-items-center">
                <div class="position-relative me-3">
                    <a href="#" class="text-dark">
                        <i class="fas fa-heart fa-lg"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            0
                            <span class="visually-hidden">Favorite items</span>
                        </span>
                    </a>
                </div>
                <div class="position-relative me-4">
                    <a href="#" class="text-dark">
                        <i class="fas fa-shopping-cart fa-lg"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-primary">
                            0
                            <span class="visually-hidden">Cart items</span>
                        </span>
                    </a>
                </div>
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
        <a href="#categories-section" class="btn btn-primary btn-lg">Shop Now</a>
    </div>
</section>

<!-- Categories Section -->
<section class="py-5" id="categories-section">
    <div class="container">
        <!-- Main categories view -->
        <div class="main-categories" id="mainCategories">
            <h2 class="text-center mb-4">Shop by Category</h2>
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card category-card" data-category="pet-food">
                        <img src="css/assets/food.jpeg" alt="pet-food" class="card-img-top">
                        <div class="card-body text-center">
                            <h5 class="card-title">Pet Food & Treats</h5>
                        </div>
                    </div>
                </div>
                <!-- Additional category cards... -->
            </div>
        </div>

        <!-- Sub-categories views -->
        <div class="sub-categories d-none" id="subCategories">
            <div class="d-flex align-items-center mb-4">
                <button class="btn btn-link back-button me-3">
                    <i class="fas fa-arrow-left"></i> Back to Categories
                </button>
            </div>

            <!-- Pet Food Sub-categories -->
            <div class="category-products d-none" id="pet-food-products">
                <h2 class="text-center mb-4">Pet Food & Treats</h2>
                <div class="row g-4">
                    <div class="col-md-3">
                        <div class="card product-card">
                            <img src="css/assets/dog-food.jpeg" alt="dog-food" class="card-img-top">
                            <div class="card-body text-center">
                                <h5 class="card-title">Dog Food</h5>
                                <p class="card-text">Premium dry dog food</p>
                                <div class="d-flex justify-content-between align-items-center mt-3">
                                    <span class="price">Rs. 2500</span>
                                    <button class="btn btn-primary btn-sm">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card product-card">
                            <img src="css/assets/food.jpeg" alt="cat-food" class="card-img-top">
                            <div class="card-body text-center">
                                <h5 class="card-title">Cat Food</h5>
                                <p class="card-text">Premium cat food</p>
                                <div class="d-flex justify-content-between align-items-center mt-3">
                                    <span class="price">Rs. 2200</span>
                                    <button class="btn btn-primary btn-sm">Add to Cart</button>
                                </div>
                            </div>
                        </div>
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
                <p>On orders over Rs.5000</p>
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
<div class="modal fade" id="loginModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="fas fa-paw me-2"></i>Login to PawMart</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="loginForm">
                    <div class="mb-3">
                        <label for="loginUsername" class="form-label">Username</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                            <input type="text" class="form-control" id="loginUsername" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="loginPassword" class="form-label">Password</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                            <input type="password" class="form-control" id="loginPassword" required>
                        </div>
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Login</button>
                </form>
                <div class="text-center mt-3">
                    <a href="#" class="forgot-link">Forgot Password?</a>
                    <p class="mt-3">Don't have an account? <a href="#" data-bs-toggle="modal" data-bs-target="#registerModal" data-bs-dismiss="modal" class="register-link">Create Account</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Register Modal -->
<div class="modal fade" id="registerModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><i class="fas fa-user-plus me-2"></i>Create Account</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Social Login Options -->
                <div class="social-login mb-4">
                    <p class="text-center mb-3">Sign up with:</p>
                    <div class="d-flex justify-content-center gap-3 mb-3">
                        <a href="#" class="btn btn-google w-100">
                            <i class="fab fa-google me-2"></i>Google
                        </a>
                        <a href="#" class="btn btn-facebook w-100">
                            <i class="fab fa-facebook-f me-2"></i>Facebook
                        </a>
                    </div>
                    <a href="#" class="btn btn-email w-100 mb-3">
                        <i class="fas fa-envelope me-2"></i>Sign up with Email
                    </a>
                    <div class="divider"><span>OR</span></div>
                </div>

                <!-- Registration Form -->
                <form id="registerForm">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="registerId" class="form-label">ID</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                                <input type="text" class="form-control" id="registerId" required>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="registerName" class="form-label">Full Name</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                <input type="text" class="form-control" id="registerName" required>
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="registerAddress" class="form-label">Address</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-home"></i></span>
                            <input type="text" class="form-control" id="registerAddress" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="registerContact" class="form-label">Contact Number</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-phone"></i></span>
                            <input type="tel" class="form-control" id="registerContact" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="registerUsername" class="form-label">Username</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                            <input type="text" class="form-control" id="registerUsername" required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="registerPassword" class="form-label">Password</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                <input type="password" class="form-control" id="registerPassword" required>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="confirmPassword" class="form-label">Confirm Password</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                <input type="password" class="form-control" id="confirmPassword" required>
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary w-100">Create Account</button>
                </form>
            </div>
        </div>
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

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const mainCategories = document.getElementById('mainCategories');
        const subCategories = document.getElementById('subCategories');
        const backButton = document.querySelector('.back-button');

        // Handle category card clicks
        document.querySelectorAll('.category-card').forEach(card => {
            card.addEventListener('click', function () {
                const category = this.dataset.category;
                const title = this.querySelector('.card-title').textContent;

                // Hide main categories with fade effect
                mainCategories.classList.add('fade-out');
                setTimeout(() => {
                    mainCategories.classList.add('d-none');

                    // Show sub-categories
                    subCategories.classList.remove('d-none');
                    subCategories.classList.add('fade-in');

                    // Hide all category products
                    document.querySelectorAll('.category-products').forEach(products => {
                        products.classList.add('d-none');
                    });

                    // Show selected category products
                    const selectedCategory = document.getElementById(`${category}-products`);
                    if (selectedCategory) {
                        selectedCategory.classList.remove('d-none');
                    }
                }, 300);
            });
        });

        // Handle back button click
        backButton.addEventListener('click', function () {
            subCategories.classList.remove('fade-in');
            subCategories.classList.add('fade-out');

            setTimeout(() => {
                subCategories.classList.add('d-none');
                mainCategories.classList.remove('d-none');
                mainCategories.classList.remove('fade-out');
                mainCategories.classList.add('fade-in');
            }, 300);
        });
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>