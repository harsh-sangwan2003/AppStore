<%@ Page Language="C#" AutoEventWireup="true" Theme="Profile" CodeBehind="Profile.aspx.cs" Inherits="AppStore.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server" onload="form1_Load">
        <div>
        <main class="main">


<aside class="sidebar">
    
  <div>
      <h1>Hello <asp:Label ID="lblMsg" runat="server"></asp:Label></h1>
      

      <a class="logo"><i class="fa-solid fa-user fa-10x"></i></a>
  </div>

  <nav class="nav">
    <ul>
      <li id="home"><a href="#">Home</a></li>
      <li class="active"><a href="#" id="profile">Profile</a></li>
      <li><a href="Settings.aspx" id="settings">Settings</a></li>
      <li><a href="Home.aspx" id="signOut">Sign Out</a></li>
    </ul>
  </nav>
</aside>

<section class="twitter">
  <div class="container">
    
   <div class="info-left">

    <div class="box">
        <h1>First Name : <asp:Label ID="Label" runat="server"></asp:Label></h1>
    </div>

    <div class="box">
        <h1>Last Name : <asp:Label ID="Label1" runat="server"></asp:Label></h1>
    </div>

    <div class="box">
        <h1>Email : <asp:Label ID="Label2" runat="server"></asp:Label></h1>
    </div>

    <div class="box">
        <h1>Password : <asp:Label ID="Label3" runat="server"></asp:Label></h1>
    </div>

    <div class="box">
        <h1>Role : <asp:Label ID="Label4" runat="server"></asp:Label></h1>
    </div>
   </div>
      
  </div>
</section>
</main>
    </div>
    </form>
</body>
</html>
