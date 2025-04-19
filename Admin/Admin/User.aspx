<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Admin.User" %>

<!DOCTYPE html>
<%@ Register Src="~/control/sidebar.ascx" TagName="Sidebar" TagPrefix="dside" %>
<%@ Register Src="~/control/header.ascx" TagName="Heading" TagPrefix="dhead" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link href="dashboard.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>
<dhead:Heading ID="header1" runat="server" />
<div class="container-fluid"  style="margin-left:-13px">
    <dside:Sidebar ID="sidebar1" runat="server"/>
<form id="form2" runat="server">
            <div class="user text-center">
                <img src="images/admin.jpg" />
                <br />
                <br />
                <h4>Admin Name:</h4><hr /><p> Nishka Shah</p>
                <br />
               <h4>Contact Number:</h4><hr /><p>9879157616</p>
                <br />
               <h4>Email ID:</h4><hr /><p>nishkashah6@gmail.com</p><br />
                <asp:Button ID="logout" runat="server" CssClass="btn cust-btn1" CausesValidation="False" Text="Logout" OnClick="logout_Click" />
                <br />
            </div>
        </form>
    </div>
</body>
</html>
