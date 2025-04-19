<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ProjectNS.Registration" %>


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
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AboutUs.aspx">About Us</a>
                </li>
            </ul>
            <div class="d-flex last">
                <a href="Login.aspx" class="btn cust-btn1">Sign In</a> <%--add login page from nirja--%>
            </div>
        </div>
    </nav>
        <div class="box">
     <div class="sub container-fluid text-center">
         
         <h2>Welcome To Petzo!</h2>
         <h4>Cater your pets with Best Quality Products.</h4>
         <h4>Let's start your sign-up process by collecting some basic details about you.</h4>
          <br />
          <br />
       <form id="form1" runat="server">
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label id="l1" runat="server" class="form-label">User Name:</asp:Label></div>
                <div class="col-sm-4">
                         <asp:TextBox id="txtuname" class="form-control" name="UserName" runat="server"  placeholder="Enter your User Name"></asp:TextBox>
                    </div>
                    <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter Your User Name" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="Enter a valid User Name" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z\s]+$"></asp:RegularExpressionValidator></div>
             </div></div>
             <br /><br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                    <asp:Label id="l2" runat="server" class="form-label">Password:</asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox id="txtpass" name="pass" runat="server" class="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                    </div>
                <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Your Password" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtpass" ErrorMessage="Password must contain exactly 8 characters and atleast one of them must be  a digit" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*\d)[A-Za-z\d]{8}$"></asp:RegularExpressionValidator></div>
                </div>
             </div>
           <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                    <asp:Label id="cpasslabel" runat="server" class="form-label">Confirm Password:</asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox id="txtcpass" name="cpass" runat="server" class="form-control" TextMode="Password" placeholder="Confirm your Password"></asp:TextBox>
                    </div>
                <div class="col-sm-3">    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtcpass" ErrorMessage="Confirm Your Password" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="Password Do Not Match" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator></div>
                </div>
             </div>
         <br /><br />
                 <div class="form-group">
   <div class="row">
       <div class="col-sm-2"></div>
       <div class="col-sm-3">
       <asp:Label id="EmailLabel" runat="server" class="form-label">Email ID:</asp:Label>
       </div>
   <div class="col-sm-4">
       <asp:TextBox id="txtemail" name="Email" runat="server" class="form-control" placeholder="Enter your Email ID"></asp:TextBox>
  
       </div>
       <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Your Email ID" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter a valid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator></div>
   </div>
</div>
         <br /><br />
           <div class="form-group">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
            <asp:Label id="l5" runat="server" class="form-label">Contact No:</asp:Label>
            </div>
        <div class="col-sm-4">
            <asp:TextBox id="txtcontact" class="form-control" name="ContactNo" TextMode="Phone" runat="server" placeholder="Enter your Contact No"></asp:TextBox>

            </div>
            <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter Your Contact Number" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Enter a valid 10-digit number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\+?[0-9-]{10}$"></asp:RegularExpressionValidator></div>
        </div>
     </div>
<br /><br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                    <div class="col-sm-3">
                    <asp:Label id="l3" runat="server" class="form-label">City:</asp:Label></div>
                <div class="col-sm-4">
                    <asp:TextBox id="txtcity" name="City" runat="server" class="form-control" placeholder="Enter your City"></asp:TextBox>
                    
                    </div>
                <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter Your City" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter a valid City" SetFocusOnError="True" ValidationExpression="^[a-zA-Z][a-zA-Z\\s]+$" ForeColor="Red"></asp:RegularExpressionValidator></div>
                </div>
             </div>
              <br />
            <br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label id="l4" runat="server" class="form-label">Address:</asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox id="txtadd" name="Address" runat="server" class="form-control" TextMode="MultiLine" rows="3" cols="50" placeholder="Enter your Address"></asp:TextBox>
                    </div>
                <div class="col-sm-3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtadd" ErrorMessage="Enter Your Address" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
             </div>
          <br /><br />
        <div class="form-group">
         <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                <asp:Button id="btnsub" runat="server" class="btn cust-btn2" Text="Submit" OnClick="btnsub_Click1"></asp:Button>
                <asp:Button id="btnres" runat="server" ButtonType="Reset" class="btn cust-btn1" Text="Reset" CausesValidation="False" UseSubmitBehavior="False" OnClick="btnres_Click" ></asp:Button></div>
                <div class="col-sm-3"></div>
          </div></div>
           <br /><asp:LinkButton ID="btn_ret" runat="server" class="text-decoration-underline" Text="Register As Retailer" OnClick="btn_ret_Click"></asp:LinkButton>
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

