<%@ Page Language="C#" AutoEventWireup="true" Theme="SignUp" CodeBehind="SignUp.aspx.cs" Inherits="AppStore.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" onload="form1_Load">
        <div id="container">
            <div class="form-wrap">
                <h1>Sign Up</h1>
                <p>It's free and only takes a minute</p>
                
                    <div class="form-group">
                        <asp:Label for="firstName" runat="server">First Name</asp:Label>
                        <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label for="lastName" runat="server">Last Name</asp:Label>
                        <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label for="email" runat="server">Email</asp:Label>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label for="password" runat="server">Password</asp:Label>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label for="password2" runat="server">Confirm Password</asp:Label>
                        <asp:TextBox ID="password2" runat="server"></asp:TextBox>
                    </div>

                   <asp:Button ID="register" class="btn" runat="server" Text="Register" OnClick="register_Click" />

                    <div class="role-container">
                    <asp:Label ID="roleLabel" runat="server">Choose Your Role</asp:Label>  

                <asp:DropDownList ID="role" runat="server">
                    <asp:ListItem Value="Guest"></asp:ListItem>
                    <asp:ListItem Value="Finance"></asp:ListItem>
                    <asp:ListItem Value="HR"></asp:ListItem>
                    <asp:ListItem Value="Admin"></asp:ListItem>
                </asp:DropDownList>
                </div>
                 
                    <p class="bottom-text">
                        By clicking the Sign Up button, you agree to our
                        <a href="#">Terms & Conditions</a> and
                        <a href="#">Privacy Policy</a>
                    </p>
            </div>
            <footer>
                <p>Already have an account? <a href="Login.aspx">Login Here</a></p>
            </footer>
        </div>
    </form>
</body>
</html>
