<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Admin.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link href="login.css" rel="stylesheet" />
</head>
<body>
    
    <div class="box">
    <div class="sub container-fluid text-center">
 <h2>Welcome Back Admin!</h2> 
         <h4>Login Here</h4>
          <br />   <br />
          

       <form id="form1" runat="server">
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
   <asp:Button id="btnsub" runat="server" class="btn cust-btn2" Text="Sign In" OnClick="btnsub_Click" ></asp:Button>
   <asp:Button id="btnback" runat="server" class="btn cust-btn1" Text="Back" CausesValidation="False" CssClass="btn cust-btn1" OnClick="btnback_Click" ></asp:Button></div>
   <div class="col-xs-3"></div>
   </div></div>

  </form> 
    </div></div>
</body>
</html>
