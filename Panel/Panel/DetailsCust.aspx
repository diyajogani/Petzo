<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsCust.aspx.cs" Inherits="Panel.DetailsCust" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="Customers" BackColor="#FFCCCC" BorderColor="#990033" ></asp:GridView>
        </div>
        <br />
        <asp:Button ID="btnback" runat="server" BackColor="#00CCFF" ForeColor="White" OnClick="btnback_Click" Text="Back To DashBoard" />
    </form>
        </center>
</body>
</html>
