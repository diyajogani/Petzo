<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="Admin.AddProducts" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <link href="login.css" rel="stylesheet" />
</head>
<body>
        <div class="box">
    <div class="sub container-fluid text-center">
        <h4>Add Your Products Here!</h4>
        <br />
        <br />
        <form id="form1" runat="server"> 
            <div class="form-group">
        <asp:Label id="status" runat="server" class="form-label" ForeColor="#FF9999"></asp:Label>
            </div><br />
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label id="l1" runat="server" class="form-label">Product Name:</asp:Label></div>
                <div class="col-sm-4">
                         <asp:TextBox id="txtpname" class="form-control" runat="server"  placeholder="Enter the Product Name"></asp:TextBox>
                    </div>
                    <div class="col-sm-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtpname" ErrorMessage="Enter the Product Name" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator>
             </div></div></div><br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label ID="l2" runat="server" class="form-label">Price:</asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtprice" runat="server" class="form-control" placeholder="Enter the Product Price"></asp:TextBox>
                </div>
                <div class="col-sm-3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtprice" ErrorMessage="Enter the Price" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator></div>
            </div>
        </div><br />
        <div class="form-group">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-3">
                    <asp:Label ID="l3" runat="server" class="form-label">Product Image:</asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:FileUpload ID="imgp" runat="server"></asp:FileUpload>
                </div>
                <div class="col-sm-3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imgp" ErrorMessage="Enter the Image of the Product" ForeColor="#F58820" SetFocusOnError="True"></asp:RequiredFieldValidator></div>
            </div>
        </div><br />
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-3"></div>
                    <div class="col-xs-6 text-center">
                        <asp:Button ID="btnsub1" runat="server" class="btn cust-btn2" Text="Submit" OnClick="btnsub_Click"></asp:Button>
                        <asp:Button ID="btnback" runat="server" class="btn cust-btn1" Text="Back" OnClick="btnback_Click" CausesValidation="False"></asp:Button>
                    </div>
                    <div class="col-xs-3"></div>
                </div>
            </div>      
  </form>
    </div></div>
</body>
</html>