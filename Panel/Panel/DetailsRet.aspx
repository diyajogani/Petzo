<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsRet.aspx.cs" Inherits="Panel.DetailsRet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="Retailers" BackColor="#CCFFFF" BorderColor="#333399"></asp:GridView>
            <br />
            <asp:Button ID="btnback" runat="server" BackColor="#FF9933" ForeColor="White" Text="Back To DashBoard" OnClick="btnback_Click" />
            <br />
        </div>
    </form>
        <center>
</body>
</html>
