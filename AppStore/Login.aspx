 <%@ Page Language="C#" AutoEventWireup="true" Theme="Login" CodeBehind="Login.aspx.cs" Inherits="AppStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" onload="form1_Load">
        <div id="container">
            <div class="form-wrap">
                <h1>Login</h1>
              
                <div class="form-group">
                        <asp:Label for="firstName" runat="server" class="label">First Name</asp:Label>
                        <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
  

                    </div>

                    <div class="form-group">
                        <asp:Label for="email" runat="server" class="label">Email</asp:Label>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
  

                    </div>
                    <div class="form-group">
                        <asp:Label for="password" runat="server" class="label">Password</asp:Label>
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>

                    </div>
                    
                    <asp:Button ID="insert_btn" class="btn" runat="server" Text="Login" OnClick="insert_btn_Click" />
                    
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
                        By clicking the Login button, you agree to our
                        <a href="#">Terms & Conditions</a> and
                        <a href="#">Privacy Policy</a>
                    </p>
                    
            </div>
            <footer>
                <p>New to the App? <a href="SignUp.aspx">Register Here</a></p>
            </footer>
        </div>
    </form>
</body>
</html>
