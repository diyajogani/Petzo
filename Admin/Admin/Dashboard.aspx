<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Admin.Dashboard" %>

<%@ Register Src="~/control/sidebar.ascx" TagName="Sidebar" TagPrefix="dside" %>
<%@ Register Src="~/control/header.ascx" TagName="Heading" TagPrefix="dhead" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link href="dashboard.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>
    <dhead:Heading ID="header1" runat="server" />
    <div class="container-fluid">
        
        <form id="form1" runat="server">
            <div class="row">
                <div class="col-sm-1">
                <dside:Sidebar ID="sidebar1" runat="server" /></div>
                    <br />

<div class="allbox col-sm-11">
                   <%--<a href="ManageProducts.aspx">--%><div class="count prod"><asp:label runat="server" id="pc"></asp:label></div><%--</a>--%>
                   <%--<a href="ManageCust.aspx">--%><div class="count cust"><asp:label runat="server" id="cc"></asp:label></div><%--</a>--%>
                   <%--<a href="MangaeRet.aspx">--%><div class="count ret"><asp:label runat="server" id="rc"></asp:label></div><%--</a>--%>
    <%--<a>--%><div class="count total"><asp:label runat="server" id="tc"></asp:label></div><%--</a>--%>
                </div>

                </div>
        </form>
    </div>
</body>
</html>
