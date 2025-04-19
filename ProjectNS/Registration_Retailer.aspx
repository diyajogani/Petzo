<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Retailer.aspx.cs" Inherits="ProjectNS.Registration_Retailer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Petzo</title>  <%--change the title to petzo--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link rel="stylesheet" href="register_css.css" />
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
                    <a class="nav-link" href="Home.aspx">Home</a>
                </li>
                 <li class="nav-item">
                   <a class="nav-link" href="Login_Retailer.aspx">Login</a>
                </li>  
                <li class="nav-item">
                    <a class="nav-link" href="AboutUs_Retailer.aspx">About Us</a>
                </li>
            </ul>
            <div class="d-flex last">
                <a href="Login_Retailer.aspx" class="btn cust-btn1">Sign In</a> <%--add login page from nirja--%>
            </div>
        </div>
    </nav>
        <div class="box">
     <div class="sub container-fluid text-center">
         
         <h2>Welcome To Petzo!</h2>
         <h4>Thankyou For Partnering With Us</h4>
         <h4>Let's start your sign-up process by collecting some basic details about you.</h4>
          <br />
          <br />
       <form id="form1" runat="server">
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label id="rl1" runat="server" class="form-label">User Name:</asp:Label></div>
                <div class="col-sm-4">
                         <asp:TextBox id="rtxtuname" class="form-control" name="UserName" runat="server"  placeholder="Enter your User Name"></asp:TextBox>
                    </div>
                    <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="rtxtuname" ErrorMessage="Enter Your User Name" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="rtxtuname" ErrorMessage="Enter a valid User Name" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z\s]+$"></asp:RegularExpressionValidator></div>
             </div></div>
             <br /><br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                    <asp:Label id="rl2" runat="server" class="form-label">Password:</asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox id="rtxtpass" name="pass" runat="server" class="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                    </div>
                <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="rtxtpass" ErrorMessage="Enter Your Password" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="rtxtpass" ErrorMessage="Password must contain exactly 8 characters and atleast one of them must be  a digit" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*\d)[A-Za-z\d]{8}$"></asp:RegularExpressionValidator></div>
                </div>
             </div>
            <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                    <asp:Label id="rcpasslabel" runat="server" class="form-label">Confirm Password:</asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox id="rtxtcpass" name="cpass" runat="server" class="form-control" TextMode="Password" placeholder="Confirm your Password"></asp:TextBox>
                    </div>
                <div class="col-sm-3">    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="rtxtcpass" ErrorMessage="Confirm Your Password" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="rtxtpass" ControlToValidate="rtxtcpass" ErrorMessage="Password Do Not Match" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator></div>
                </div>
             </div>
         <br /><br />
           <div class="form-group">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
            <asp:Label id="rl3" runat="server" class="form-label">Contact No:</asp:Label>
            </div>
        <div class="col-sm-4">
            <asp:TextBox id="rtxtcontact" class="form-control" name="ContactNo" TextMode="Phone" runat="server" placeholder="Enter your Contact No"></asp:TextBox>

            </div>
            <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rtxtcontact" ErrorMessage="Enter Your Contact Number" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="rtxtcontact" ErrorMessage="Enter a valid 10-digit number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\+?[0-9-]{10}$"></asp:RegularExpressionValidator></div>
        </div>
     </div>
<br /><br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                    <asp:Label id="rl4" runat="server" class="form-label">City:</asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox id="rtxtcity" name="City" runat="server" class="form-control" placeholder="Enter your City"></asp:TextBox>
                    
                    </div>
                <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rtxtcity" ErrorMessage="Enter Your City" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="rtxtcity" ErrorMessage="Enter a valid City" SetFocusOnError="True" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" ForeColor="Red"></asp:RegularExpressionValidator></div>
                </div>
             </div>
              <br />
            <br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label id="rl5" runat="server" class="form-label">Address:</asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox id="rtxtadd" name="Address" runat="server" class="form-control" TextMode="MultiLine" rows="3" cols="50" placeholder="Enter your Address"></asp:TextBox>
                    </div>
                <div class="col-sm-3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rtxtadd" ErrorMessage="Enter Your Address" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
             </div>
          <br /><br />
                <div class="form-group">
                <div class="row">
                 <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label id="rl6" runat="server" class="form-label">Brand Name:</asp:Label></div>
                <div class="col-sm-4">
                         <asp:TextBox id="rtxtbrand" class="form-control" name="BrandName" runat="server"  placeholder="Enter your Brand Name"></asp:TextBox>
                    </div>
                    <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rtxtbrand" ErrorMessage="Enter Your Brand Name" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
             </div></div></div>
             <br /><br />
      <div class="form-group">
     <div class="row">
         <div class="col-sm-2"></div>
         <div class="col-sm-3">
             <asp:Label id="rl7" runat="server" class="form-label">Brand Logo:</asp:Label>
         </div>
         <div class="col-sm-4">
             <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#00526C" ForeColor="#00526C" /></div>
         <div class="col-sm-3">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Enter your Logo" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
             </div>
         </div>
      </div>
       <br /><br />
        <div class="form-group">
         <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                <asp:Button id="rbtnsub" runat="server" class="btn cust-btn2" Text="Submit" OnClick="rbtnsub_Click"></asp:Button>
                <asp:Button id="rbtnres" runat="server" ButtonType="Reset" class="btn cust-btn1" Text="Reset" CausesValidation="False" UseSubmitBehavior="False" OnClick="rbtnres_Click" ></asp:Button></div>
                <div class="col-sm-3"></div>
          </div></div>
           <br /> <asp:LinkButton id="btn_cust" runat="server" class="text-decoration-underline" Text="Register As Customer" OnClick="btn_cust_Click"></asp:LinkButton>
       </form> 
   </div></div>
        <footer class="text-white py-4">
            <div class="container">
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
            <span class="text-white me-3"><i class="fa-brands fa-facebook"></i> </span>
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
    <script>document.getElementById('toggleButton').addEventListener('click', function () {
            var sidebar = document.getElementById('navbarToggleExternalContent');
            var isVisible = sidebar.style.left === '0px';

            if (isVisible) {
                sidebar.style.left = '-250px'; // Hide sidebar
            } else {
                sidebar.style.left = '0'; // Show sidebar
            }
        });</script>

  
</body>
</html>


