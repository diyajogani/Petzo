<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs_LoggedIn.aspx.cs" Inherits="ProjectNS.AboutUs_LoggedIn" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="about_us_css.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <div class="logo">
                <img src="finallogo.png" alt="Logo" />
                <span class="name">PETZO</span>
            </div>
            <ul class="navbar-nav nav-center">
                <li class="nav-item">
                    <a class="nav-link" href="Home_LoggedIn.aspx">Home</a>
                </li>
               <li class="nav-item">
                <a class="nav-link" href="Cart.aspx">Cart</a>
            </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>

            </ul>
            <div class="d-flex last">
                <a href="Home.aspx" class="btn cust-btn1">Sign Out</a>
            </div>
        </div>
    </nav>
   <div class=" jumbotron header">
        <br />
        <br />
        <br />
        <h1 class="heading">Discover Premium Pet
            <br />
            Products for Pets</h1>
        <br />
        <p class="heading_para">At Petzo, we celebrate the joy pets bring to our lives by offering high-quality,<br />
            innovative products tailored to their needs. Explore our diverse range of pet<br />
            essentials and pamper your furry friends today! </p>
        <br />
        <br />
        <br />
        <h4><a href="https://localhost:44396/Login.aspx">If Admin, Login Here!</a></h4>
        <br />
        <br />
        <div class="dogpic">
            <img src="dog_pic.jpg" alt="dog" class="dog_pic hidden" />
        </div>
    </div>
    <br />
    <br />
    <div class="idealogy">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="content hidden">
                        <div class="symbol">
                            <i class="fa fa-braille one" aria-hidden="true"></i>
                        </div>
                        <br />
                        <div class="details">
                            <h2>Quality Assured Products</h2>
                            <p>Shop the best for your pets' well-being.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content hidden">
                        <div class="symbol">
                            <i class="fa fa-certificate two" aria-hidden="true"></i>
                        </div>
                        <br />
                        <div class="details">
                            <h2>Innovative Pet Essentials </h2>
                            <p>Discover the latest must-haves for pets.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content hidden">
                        <div class="symbol">
                            <i class="fa fa-pie-chart three" aria-hidden="true"></i>
                        </div>
                        <br />
                        <div class="details">
                            <h2>Pet Health Focus</h2>
                            <p>Prioritize your pets' health with quality care products.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h4>Why Choose Petzo</h4>
    <div class="reason hidden">
        <h1>Unparalleled Quality For<br />
            Your Beloved Pets</h1>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="content1">
                        <div class="symbol1">
                            <i class="fa fa-star four" aria-hidden="true"></i>
                        </div>
                        <div class="details">
                            <h2>Healthy Meals</h2>
                            <p>Nutrition-rich meals for your pets.</p>
                        </div>
                    </div>
                    <div class="content1">
                        <div class="symbol2">
                            <i class="fa fa-check five" aria-hidden="true"></i>
                        </div>
                        <div class="details">
                            <h2>Care Products</h2>
                            <p>Essentials for grooming and health.</p>
                        </div>
                    </div>
                    <div class="content1">
                        <div class="symbol3">
                            <i class="fa fa-certificate six" aria-hidden="true"></i>
                        </div>
                        <div class="details">
                            <h2>Engaging Toys</h2>
                            <p>Keep pets active with fun toys.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <img src="dog_pic1.png" alt="dog_pic" class="pic" />
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="box">
        <div class="container">
            <div class="row">
                <div class="col-md-6 box_img">
                    <img src="dog_a.jpg" alt="dog_pic" class="pic1" />
                </div>
                <div class="col-md-6">
                    <div class="describe">
                        <h2>Best Pet Products
                            <br />
                            Solutions for Your
                            <br />
                            Needs</h2>
                        <p>Our specialized pet products include everything from dietary needs to grooming essentials, ensuring your pet enjoys a happy and healthy life.</p>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-6">
                    <div class="describe1">
                        <h2>Essential Pet Products Tailored
                            <br />
                            for Your Furry Friends</h2>
                        <p>Our wide range of pet products, from food to accessories, ensures your pets' health and happiness. Discover top-quality, safe, and affordable items crafted with love for your furry companions.</p>
                    </div>
                </div>
                <div class="col-md-6 box_img">
                    <img src="dog_b.jpg" alt="dog_pic" class="pic2" />
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div class="header1">
        <div class="container">
            <div class="row header2">
                <div class="col-sm-6">
                    <div class="describe1">
                        <h1 class="heading1">Why Petzo Stands Out</h1>
                        <p class="heading_para1">Discover premium products with unparalleled quality that make <br /> us a trusted choice among pet owners.</p>
                        <div class="desc">
                            <h2 class="heading2">10k+</h2>
                            <p class="heading_para2">Happy <br /> Pets </p>
                            <h2 class="heading3">15k+</h2>
                            <p class="heading_para2">Satisfied <br /> Owners</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <img src="dog_c.jpg" alt="dog_pic" class="pic3" />
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <h1 class="heading4">Explore Our Insights</h1>
    <p class="heading_para3">Stay informed with our expert advice on the best pet products that trends to keep your furry friends healthy and happy.</p>
    <br />
    <div class="insights hidden">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 insights1">
                    <div class="card text-white mb-3">
                        <img src="food.jpg" alt="food_pic" class="pic4" />
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2">March 14, 2024</h6>
                            <p class="card-text">Top 5 Healthy Pet Foods to Keep Your Pet Energized</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 insights2">
                    <div class="card text-white mb-3">
                        <img src="toy.jpg" alt="toy_pic" class="pic4" />
                        <div class="card-body">
                            <h6 class="card-subtitle mb-2">July 22, 2024</h6>
                            <p class="card-text">How to Choose the Best Toys to Keep Your Pets Entertained</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div class="review">
        <div class="sam_img">
            <img src="sam.jpg" alt="customer_pic" class="pic5" />
        </div>
        <div class="sam_review">
            <h1>Petzo has revolutionized my pet’s life with their top-notch<br />
                products that blend quality and innovation</h1>
            <h2>Sam Smith</h2>
        </div>
    </div>
    <br />
    <br />
    <br />
    <footer class="text-white py-4">
        <div class="container-fluid foot">
            <div class="row">
                <div class="col-md-4">
                    <h5>EXPLORE</h5>
                    <p>Dog</p>
                    <p>Cat</p>
                    <p>Personalized Items</p>
                    <p>Paws Blogs</p>
                    <p>Dog Health Insurance</p>
                </div>
                <div class="col-md-4">
                    <h5>NEED HELP?</h5>
                    <p>Track your order</p>
                    <p>Privacy Policy</p>
                    <p></p>

                </div>
                <div class="col-md-4">
                    <h5>TRENDING LINKS</h5>
                    <p>Dog Toys</p>
                    <p>Dog Treats & Chews</p>
                    <p>Tuxedo Bandana</p>
                    <p>Rainwear</p>
                    <p>Cat Toys</p>
                </div>
            </div>
        </div>
        <div class="my-3 p-4 foot1">
            <h5>STAY CONNECTED :</h5>
            <div>
                <span class="text-white me-3"><i class="fa-brands fa-facebook"></i></span>
                <span class="text-white me-3"><i class="fa-brands fa-twitter"></i></span>
                <span class="text-white me-3"><i class="fa-brands fa-instagram"></i></span>
                <span class="text-white"><i class="fa-brands fa-youtube"></i></span>
            </div>
        </div>
        <hr />
        <div class="text-center py-3">
            &copy; 2024 Petzo. All Rights Reserved.
       
        </div>
    </footer>


    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const observer = new IntersectionObserver((entries) => {
                entries.forEach((entry) => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('show');
                    } else {
                        entry.target.classList.remove('show');
                    }
                });
            });

            const hiddenElements = document.querySelectorAll('.hidden');
            hiddenElements.forEach((el) => observer.observe(el));
        });
    </script>
</body>
</html>

