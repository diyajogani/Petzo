<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="ProjectNS.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Petzo Navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link rel="stylesheet" href="cart_css.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <script type="text/javascript">
        function showAlertForRemove(message) {
            Swal.fire({
                icon: 'error',
                title: 'Removed',
                text: message,
                confirmButtonText: 'OK'
            });
        }

    </script>
    
  </head>

<body>
     <form id="form2" runat="server">
         <nav class="navbar ">
     <div class="container-fluid d-flex justify-content-center align-items-center">
         <div class="logo d-flex">
             <img src="finallogo.png" alt="Logo" style="height: 40px;" />
             <span class="name ms-2">PETZO</span>
         </div>

         <!-- Centered Navigation Links -->
         <ul class="navbar-nav d-flex flex-row mx-5">
             <li class="nav-item me-3">
                 <a class="nav-link" href="Home_LoggedIn.aspx">Home</a>
             </li>
             <li class="nav-item me-3">
                 <a class="nav-link" href="Cart.aspx">Cart</a>
             </li>
             <li class="nav-item me-3">
                 <a class="nav-link" href="AboutUs_LoggedIn.aspx">About Us</a>
             </li>
         </ul>

         <!-- Right Aligned Login and Sign Up Buttons -->
         <div class="d-flex last">
             <a href="Home.aspx" class="btn cust-btn1">Sign Out</a>
         </div>
     </div>
 </nav><br />
    <center>
        <div class="place">
            <table class="table table-bordered">
       <asp:Repeater runat="server" ID="order1">
           <HeaderTemplate>
               
           </HeaderTemplate>
           <ItemTemplate>
                 <tr>
                    <td><div class="pimage"><img src='<%# "data:image/png;base64," + Eval("urls") %>' alt="Product Image" /></td>
                  <td><div class="pdesc"><h5>Product Name: <%# Eval("name") %></h5>
                   <p class="price">Price: Rs 
                       <%# Eval("price") %></p>
                    <p class="price">Qty: 
    <%# Eval("qty") %></p>


                      </div>
                      </td>
                </tr>
           </ItemTemplate>
           <FooterTemplate>
               
           </FooterTemplate>    
       </asp:Repeater>
            </table>
            </div>
        <asp:Label id="total" runat="server"></asp:Label><br />
         <br /><asp:Button runat="server" text="Confirm Order" class="btn cust-btn2" ID="btnconfirm" OnClick="btnconfirm_Click"/>
      </center> 
</form>
    <br />
   <!--Footer -->
<footer class="text-white py-4">
    <div class="container-fluid foot">
        <div class="row">
            <div class="col-md-4">
                <h5>EXPLORE</h5>
                <p>&nbsp;</p>
                <ul class="list-unstyled">
                    <li>Dog</li>
                    <li>Cat</li>
                    <li>Personalized Items</li>
                    <li>Paws Blogs</li>
                    <li>Dog Health Insurance</li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>NEED HELP?</h5>
                <ul class="list-unstyled">
                    <li>Track your order</li>
                    <li>Privacy Policy</li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>TRENDING LINKS</h5>
                <ul class="list-unstyled">
                    <li>Dog Toys</li>
                    <li>Dog Treats & Chews</li>
                    <li>Tuxedo Bandana</li>
                    <li>Rainwear</li>
                    <li>Cat Toys</li>
                </ul>
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

</body>
</html>

