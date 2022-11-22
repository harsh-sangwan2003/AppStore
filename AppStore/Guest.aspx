<%@ Page Language="C#" AutoEventWireup="true" Theme="Downloads" CodeBehind="Guest.aspx.cs" Inherits="AppStore.Guest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="js/showApps.js"></script>
</head>
<body>
    <form id="form1" runat="server" onload="admin_form">
        <div>
            <main class="main">


    <aside class="sidebar">
        
      <div>
          <h1>Hello <asp:Label ID="lblMsg" runat="server"></asp:Label> </h1>
          <a id="logo"><i class="fa-solid fa-user fa-10x"></i></a>
      </div>

      <nav class="nav">
        <ul>
          <li class="active"><a href="#">Home</a></li>
          <li><a href="Profile.aspx">Profile</a></li>
          <li><a href="Settings.aspx">Settings</a></li>
          <li><a href="Home.aspx">Sign Out</a></li>
        </ul>
      </nav>
    </aside>

    <section class="twitter">
      <div class="container">
        <div class="box" id="box-1">
            <a target="_blank" href="https://www.facebook.com/">
                <img src="images/facebook.png" alt="facebook">
            </a>
            <button type="submit" class="btn" onclick="mouseClick()">Download</button>
        </div>

        <div class="box" id="box-2">
            <a target="_blank" href="https://www.gmail.com/">
                <img src="images/gmail.png" alt="gmail">
            </a>
            <button type="submit" class="btn" onclick="mouseClick()">Download</button>
        </div>

        <div class="box">
            <a target="_blank" href="https://www.whatsapp.com/">
                <img src="images/whatsapp.png" alt="whatsapp">
            </a>
            <button type="submit" class="btn" onclick="mouseClick()">Download</button>
        </div>

      </div>
    </section>
  </main>
        </div>
    </form>
</body>
</html>
