 <%@ Page Language="C#" AutoEventWireup="true" Theme="Home" CodeBehind="Home.aspx.cs" Inherits="AppStore.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="heading">TATA POWER DDL</h1>

            <div class="tata-main">
                <img src="images/Tata.jpg"/>
            </div>
            
            <asp:Button ID="btnClick" class="btn" Text="Welcome To Tata Powers" runat="server" OnClick="btnClick_Click" />

        </div>
    </form>
</body>
</html>
