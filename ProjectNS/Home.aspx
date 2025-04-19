<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProjectNS.Home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Petzo Navbar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link rel="stylesheet" href="home_css.css" />
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
        function showcheck(message) {
            Swal.fire({
                icon: 'info',
                title: message,

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
                        <a class="nav-link" href="AboutUs.aspx">About Us</a>
                    </li>
                  
                </ul>
                <div class="d-flex last">
    <!-- Trigger the modal with this button -->
    <button type="button" class="btn cust-btn1" data-bs-toggle="modal" data-bs-target="#loginModal">Sign In</button>
    <button type="button" class="btn cust-btn2" data-bs-toggle="modal" data-bs-target="#registrationModal">Sign Up</button>
            </div>

                <!-- Right Aligned Login and Sign Up Buttons -->
               
            </div>
        </nav>

        <div class="banner">
            <img src="finall.png" alt="Banner Image" />
        </div>

        <br />
        <!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginModalLabel">Login as</h5>

           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <button type="button" class="btn btn-success btn-customer" onclick="redirectTo('login_cust')">Sign In as Customer</button>
        <button type="button" class="btn btn-info btn-retailer" onclick="redirectTo('reti_cust')">Sign In as Retailer</button>
      </div>
    </div>
  </div>
</div>

        <div class="modal fade" id="registrationModal" tabindex="-1" aria-labelledby="registrationModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="registrationModalLabel">Register as</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <button type="button" class="btn  btn-success btn-register-customer" onclick="redirectTo('register_cust')">Register as Customer</button>
                        <button type="button" class="btn  btn-info btn-register-retailer" onclick="redirectTo('register_reti')">Register as Retailer</button>
                    </div>
                </div>
            </div>
        </div>
<script type="text/javascript">
    function redirectTo(page) {
        if (page === 'login_cust') {
            window.location.href = 'Login.aspx'; // Redirect to customer login page
        } else if (page === 'reti_cust') {
            window.location.href = 'Login_Retailer.aspx'; // Redirect to retailer login page
        } else if (page === 'register_cust') {
            window.location.href = 'Registration.aspx'; // Redirect to customer registration page
        } else if (page === 'register_reti') {
            window.location.href = 'Registration_Retailer.aspx'; // Redirect to retailer registration page
        }
    }
    </script>
        <!-- BEST SELLER SECTION -->
        
        <div class="best-seller-section">
            <h2 class="best-seller-title">Best Seller Products</h2>
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="best-seller-product-card">
                            <div class="best-seller-ribbon">Best Seller</div>
                            <asp:Image runat="server" ID="image1" ImageUrl="petfood5.png" alt="Product Image" class="img-fluid" />
                            <h3 runat="server" id="mainname1" class="pname">Whiskas Ocean Fish Flavour Adult Cat Dry Food</h3>
                            <p runat="server" id="price1" class="price">Rs 230</p>
                            </div>
                    </div>

                    <div class="col-md-3">
                        <div class="best-seller-product-card">
                            <div class="best-seller-ribbon">Best Seller</div>
                            <asp:Image runat="server" ID="image2" ImageUrl="petaccessories1.png" alt="Product Image" class="img-fluid" />
                            <h3 runat="server" id="mainname2" class="pname">Hank 3M Reflective Harness for Puller Dogs</h3>
                            <p runat="server" id="price2" class="price">Rs 120</p>
                             </div>
                    </div>

                    <div class="col-md-3">
                        <div class="best-seller-product-card">
                            <div class="best-seller-ribbon">Best Seller</div>
                            <asp:Image runat="server" ID="image3" ImageUrl="petsupplies3.png" alt="Product Image" class="img-fluid" />
                            <h3 runat="server" id="mainname3" class="pname">Pawpaya Nestor Jumbo Toilet Home for Cats</h3>
                            <p runat="server" id="price3" class="price">Rs 230</p>
                            </div>
                    </div>

                    <div class="col-md-3">
                        <div class="best-seller-product-card">
                            <div class="best-seller-ribbon">Best Seller</div>
                            <asp:Image runat="server" ID="image4" ImageUrl="pettoy3.png" alt="Product Image" class="img-fluid" />
                            <h3 runat="server" id="mainname4" class="pname">Trixie Denta Fun Ball Toy for Dogs</h3>
                            <p runat="server" id="price4" class="price">Rs 340</p>
                           </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container text-center my-5">
            <h2 class="">Top Categories</h2>
            <div class="row mt-4">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <a href="#food"> <img src="petfood.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <a href="#toys"><img src="pettoys.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                     <a href="#accessories"><img src="petaccessories.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <a href="#supplies"><img src="petsupplies.png" height="230" width="200" class="category-img-top" alt="Dog Food" /></a>
                </div>
            </div>
        </div>
      <!--FOOD-->
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="allcat">
            <section id="food" >  
                <h2 class="heading text-center mb-4">Food for Your Pets</h2>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                     <div class="product">
                    <ul>
                    </HeaderTemplate>
                        <ItemTemplate>
                    <li>
                        <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" /><br />
                        <p class="price">Rs <%# Eval("price") %></p>
                        <asp:Button ID="btnadd" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" class="btn btn-primary"></asp:Button>
                        <br /><br />
                        <h4><%# Eval("pname") %></h4>
                        
                   </li>
                    </ItemTemplate>
                 <FooterTemplate>
                </ul>
                </div>
                 </FooterTemplate>
                        </asp:Repeater>
                    </ContentTemplate>
                        </asp:UpdatePanel>
              </section>

            <!--TOYS-->
            <section id="toys">
                <h2 class="heading text-center mb-4">Toys for Your Pets</h2>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                <asp:Repeater ID="r2" runat="server">
                    <HeaderTemplate>
                        <div class="product">
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" /><br />
                            <p class="price">Rs <%# Eval("price") %></p>
                            <asp:Button ID="btnadd" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" class="btn btn-primary"></asp:Button>
                            <br /><br />
                            <h4><%# Eval("pname") %></h4>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                       </div>
                    </FooterTemplate>
                </asp:Repeater>

                </ContentTemplate>
                </asp:UpdatePanel>
            </section>

            <!--Accessories -->
            <section id="accessories">
                <h2 class="heading text-center mb-4">Accessories for Your Pets</h2>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                <asp:Repeater ID="r3" runat="server">
                    <HeaderTemplate>
                        <div class="product">
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" /><br />
                            <p class="price">Rs <%# Eval("price") %></p>
                            <asp:Button ID="btnadd" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" class="btn btn-primary"></asp:Button>
                            <br /><br />
                            <h4><%# Eval("pname") %></h4>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
        </div>
                    </FooterTemplate>
                </asp:Repeater>
                </ContentTemplate>
                </asp:UpdatePanel>
            </section>


<!--Supplies -->
    <section id="supplies" class="container-fluid">
        <h2 class="heading text-center mb-4">Supplies for Your Pets</h2>
        <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
         <ContentTemplate>
         <asp:Repeater ID="r4" runat="server">
     <HeaderTemplate>
         <div class="product">
             <ul>
     </HeaderTemplate>
     <ItemTemplate>
         <li>
             <img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" /><br />
             <p class="price">Rs <%# Eval("price") %></p>
             <asp:Button ID="btnadd" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" class="btn btn-primary"></asp:Button>
             <br /><br />
             <h3><%# Eval("pname") %></h3>  
        </li>
     </ItemTemplate>
     <FooterTemplate>
         </ul>
        </div>
     </FooterTemplate>
 </asp:Repeater>
             </ContentTemplate>
            </asp:UpdatePanel>
    </section>
</div>


        <section class="container-fluid my-5">
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="advantage-box">
                        <div class="icon-box">
                            <i class="fa-solid fa-truck-fast"></i>
                        </div>
                        <h4>Fast Delivery</h4>
                        <p>Get your products delivered within 2 days. Our express service ensures quick delivery for all orders.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="advantage-box">
                        <div class="icon-box">
                            <i class="fa-solid fa-thumbs-up"></i>
                        </div>
                        <h4>Customer Satisfaction</h4>
                        <p>Top priority on customer happiness. Your satisfaction is our ultimate goal with every purchase.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="advantage-box">
                        <div class="icon-box">
                            <i class="fa-solid fa-shield-halved"></i>
                        </div>
                        <h4>Secure Payments</h4>
                        <p>Your payment details are safe with us. We ensure secure transactions using advanced encryption.</p>
                    </div>
                </div>
            </div>
        </section>


        <!-- Testimonials Section -->
        <div class="testimonials">
            <h2>What Our Customers Say</h2>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="testimonial-card">
                            <p>"Petzo has the best products for my dog! Highly recommend!"</p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="author">Jane Doe</div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="testimonial-card">
                            <p>"Fantastic service and quality. My cats love their new toys."</p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                            <div class="author">John Smith</div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="testimonial-card">
                            <p>"Great collection of pet food and accessories. Will shop here again."</p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <div class="author">John Smith</div>
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
            <div class="my-3 p-4">
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
