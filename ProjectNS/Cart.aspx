<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ProjectNS.Cart" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Petzo Navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />


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


        function confirmDecrease(qty) {
            if (qty <= 1) {
                return confirm("Item has reached 0 Quantity.Do you want to remove this item from cart?");
            }
            return true;
        }

    </script>
    <style>
        
        </style>
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
                        <a class="nav-link" href="#">Cart</a>
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
        </nav>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid mt-5">

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="table-responsive">

                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped text-center" AutoGenerateColumns="false" EnableViewState="true" OnRowCommand="GridView1_RowCommand" ShowHeaderWhenEmpty="true">

                            <Columns>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="ProductImage" runat="server" ImageUrl='<%# "data:image/png;base64," + Eval("urls") %>' Width="100px" Height="100px" />
                                        <%--converts url to image--%>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="name" HeaderText="Product Name" />

                                <asp:TemplateField HeaderText="Price">
                                    <ItemTemplate>
                                        Rs <%# Eval("price") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="QTY">
                                    <ItemTemplate>
                                        <asp:Button     OnClientClick='<%# "return confirmDecrease(" + Eval("qty") + ");" %>' ID="btnDecrease" runat="server" Text="-" CommandName="DecreaseQty" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-secondary btn-sm" />
                                        <asp:Label ID="lblQty" runat="server" Text='<%# Eval("qty") %>' CssClass="mx-2"></asp:Label>
                                        <asp:Button ID="btnIncrease" runat="server" Text="+" CommandName="IncreaseQty" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-secondary btn-sm" />
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:Button ID="RemoveFromCartButton" runat="server" Text="Remove" CommandName="RemoveFromCart" CommandArgument='<%# Eval("id") %>' CssClass="btn btn-danger" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                            <EmptyDataTemplate>
                                <div class="alert alert-danger text-center">
                                    No Items In The Cart!
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
        <center>
            <br />
            <asp:Button ID="Button2" runat="server"  class="btn cust-btn2" Text="Place Order" Width="127px" OnClick="Button2_Click" />
            <br />
            <br />
        </center>
    </form>



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
