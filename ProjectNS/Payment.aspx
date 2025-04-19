<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="ProjectNS.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link href="login_css.css" rel="stylesheet" />
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
                    <a class="nav-link" href="AboutUs_LoggedIn.aspx">About Us</a>
                </li>
            </ul>
            <div class="d-flex last">
             <a href="Home.aspx" class="btn cust-btn1">Sign Out</a> 
        </div>
        </div>
    </nav> 
    <div class="box">
    <div class="sub container-fluid text-center">
         
                 <h4>Payment Gateway!</h4>
          <br /><br />
          

<%--       <form id="form1" runat="server">
           <asp:Label id="status" runat="server" ForeColor="Red" />
        
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label id="l1" runat="server" class="form-label">User Name:</asp:Label></div>
                <div class="col-sm-4">
                         <asp:TextBox id="ltxtuname" class="form-control" name="UserName" runat="server"  placeholder="Enter your User Name"></asp:TextBox>
                    </div>
                    <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ltxtuname" ErrorMessage="Enter Your User Name" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ltxtuname" ErrorMessage="Enter a valid User Name" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z\s]+$"></asp:RegularExpressionValidator></div>
             </div></div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                    <asp:Label id="l2" runat="server" class="form-label">Password:</asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox id="ltxtpass" name="pass" runat="server" class="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                    </div>
                <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ltxtpass" ErrorMessage="Enter Your Password" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="ltxtpass" ErrorMessage="Password must contain exactly 8 characters and atleast one of them must be  a digit" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*\d)[A-Za-z\d]{8}$"></asp:RegularExpressionValidator></div>
                </div>
             </div>
                 <div class="form-group">
       <div class="row">
   <div class="col-xs-3"></div>
   <div class="col-xs-6 text-center">
   <asp:Button id="btnsub1" runat="server" class="btn cust-btn2" Text="Sign In" OnClick="btnsub_Click" ></asp:Button></div>
   <div class="col-xs-3"></div>

   </div></div>
     <asp:LinkButton ID="btn_ret" runat="server" class="text-decoration-underline" OnClick="btn_Retailer_Click" Text="Login As Retailer"></asp:LinkButton>      
  </form>--%>
    </div></div>
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
</body>
</html>
