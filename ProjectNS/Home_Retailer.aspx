<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Retailer.aspx.cs" Inherits="ProjectNS.Home_Retailer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Petzo Navbar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link rel="stylesheet" href="retailer_css.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <script type="text/javascript">
        function showAlert(message) {
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: message
            });
        }
</script>
</head>

<body>
    <form id="form1" runat="server">
        <nav class="navbar ">
            <div class="container-fluid d-flex justify-content-center align-items-center">
                <div class="logo d-flex">
                    <img src="finallogo.png" alt="Logo" style="height: 40px;" />
                    <span class="name ms-2">PETZO</span>
                </div>

                <!-- Centered Navigation Links -->
                <ul class="navbar-nav d-flex flex-row mx-5">
                    <li class="nav-item me-3">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item me-3">
                        <a class="nav-link" href="AboutUs_Retailer.aspx">About Us</a>
                    </li>
                </ul>
                <!-- Right Aligned Login and Sign Up Buttons -->
                <div class="d-flex last">
                    <a href="Home.aspx" class="btn cust-btn1">Sign Out</a>
                </div>
            </div>
        </nav>

        <div class="banner">
            <img src="finall.png" alt="Banner Image" />
        </div>

        <br />


        <div class="container text-center my-5">
            <h2 class="">Categories</h2>
            <div class="row mt-4">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <a href="#food">
                        <img src="petfood.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <a href="#toys">
                        <img src="pettoys.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <a href="#accessories">
                        <img src="petaccessories.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <a href="#supplies">
                        <img src="petsupplies.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
            </div>
        </div>


        <!--FOOD-->
        <div class="allcat">
            <section id="food" class="container-fluid">
                <h2 class="heading text-center mb-4">Food for Your Pets</h2>
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <div class="product">
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" />
                            <br /><p class="price">Rs <%# Eval("price") %></p>
                            <h4><%# Eval("pname") %></h4>
                            
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                     </div>
                    </FooterTemplate>
                </asp:Repeater>

                 <center>
                     <asp:Button ID="addFood" CssClass="btn allretbtn" runat="server" Text="ADD FOOD" BackColor="Teal" ForeColor="White" OnClick="addFood_Click" />

                 </center>
            </section>


            <!--TOYS-->
            <section id="toys" class="container-fluid">
                <h2 class="heading text-center mb-4">Toys for Your Pets</h2>
                <asp:Repeater ID="r2" runat="server">
                    <HeaderTemplate>
                        <div class="product">
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" /><br />
                            <p class="price">Rs <%# Eval("price") %></p>
                            <h4><%# Eval("pname") %></h4>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
                <center>
                    <asp:Button ID="addToy" CssClass="btn allretbtn" runat="server" Text="ADD TOYS" BackColor="Teal" ForeColor="White" OnClick="addToy_Click" />

                </center>
            </section>

            <!--Accessories -->
            <section id="accessories" class="container-fluid">
                <h2 class="heading text-center mb-4">Accessories for Your Pets</h2>
                <asp:Repeater ID="r3" runat="server">
                    <HeaderTemplate>
                        <div class="product">
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" /><br />
                            <p class="price">Rs <%# Eval("price") %></p>
                            <h4><%# Eval("pname") %></h4> 
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                         </div>
                    </FooterTemplate>
                </asp:Repeater>

                <center>
                    <asp:Button ID="addAcc" CssClass="btn allretbtn" runat="server" Text="ADD ACCESSORIES" BackColor="Teal" ForeColor="White" OnClick="addAcc_Click" />

                </center>
            </section>

            <!--Supplies -->
            <section id="supplies" class="container-fluid">
                <h2 class="heading text-center mb-4">Supplies for Your Pets</h2>
                <asp:Repeater ID="r4" runat="server">
                    <HeaderTemplate>
                        <div class="product">
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" />
                            <p class="price">Rs <%# Eval("price") %></p>  
                            <h4><%# Eval("pname") %></h4>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>

                <center>
                    <asp:Button ID="addSupp" CssClass="btn allretbtn" runat="server" Text="ADD SUPPLIES" BackColor="Teal" ForeColor="White" OnClick="addSupp_Click" />

                </center>

            </section>
        </div>


        <section class="container-fluid my-5">
    <div class="row text-center">
        <div class="col-md-4">
            <div class="advantage-box">
                <div class="icon-box">
                    <i class="fa-solid fa-boxes-stacked"></i>
                </div>
                <h4>Bulk Orders</h4>
                <p>Get exclusive discounts on large orders. We offer flexible purchasing options for our retailers.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="advantage-box">
                <div class="icon-box">
                    <i class="fa-solid fa-handshake"></i>
                </div>
                <h4>Partner Deals</h4>
                <p>Enjoy special offers and deals tailored for our business partners, helping you maximize profits.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="advantage-box">
                <div class="icon-box">
                    <i class="fa-solid fa-chart-line"></i>
                </div>
                <h4>Growth Support</h4>
                <p>We’re here to help your business grow with marketing tools, resources, and dedicated support.</p>
            </div>
        </div>
    </div>
</section>


        <!-- Retailer Testimonials Section -->
<div class="testimonials">
    <h2>What Our Supplier Say</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"Partnering with Petzo has been a game-changer for our store. Their bulk discounts and reliable service keep our shelves stocked."</p>
                    <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <div class="author">Jane Doe, Retailer</div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"The quality of products from Petzo is unmatched, and their customer service has been fantastic."</p>
                    <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <div class="author">John Smith, Pet Store Owner</div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"We've been able to expand our business thanks to Petzo’s partner deals and fast delivery. Highly recommended for any retailer!"</p>
                    <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div class="author">Emma Lee, Pet Supplies Shop</div>
                </div>
            </div>
        </div>
    </div>
</div>

        <section class="featured-brands container">
    <h2>Featured Brands</h2>
    <div class="row">
        <asp:Repeater ID="View1" runat="server">
        <ItemTemplate>
    <!-- Each image will be in a separate column of 2 units (col-md-2) -->
        <div class="col-md-2 col-sm-4 col-6 brand-item mb-4">
        <img class="brand-logo img-fluid" src='<%# BindImage(Container.DataItem) %>' alt="Retailer Logo" />
        </div>
        </ItemTemplate>
        </asp:Repeater>
    </div>
</section>
        <!--Footer -->
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
    </form>
</body>
</html>

