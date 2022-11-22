<%@ Page Language="C#" AutoEventWireup="true" Theme="Settings" CodeBehind="Settings.aspx.cs" Inherits="AppStore.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <main class="main">
    
    
    <aside class="sidebar">
    
    <div>
      <h1>Hello John</h1>
      
    
      <a class="logo"><i class="fa-solid fa-user fa-10x"></i></a>
    </div>
    
    <nav class="nav">
    <ul>
      <li id="home"><a href="#">Home</a></li>
      <li><a href="#" id="profile">Profile</a></li>
      <li class="active"><a href="Settings.aspx" id="settings">Settings</a></li>
      <li><a href="Home.aspx" id="signOut">Sign Out</a></li>
    </ul>
    </nav>
    </aside>
    
    <section class="twitter">
    <div class="container">
    
    <div class="info-left">
    
    <div class="box">
        <button class="btn">Account <i class="fa-solid fa-user"></i> </button>
    </div>
    <div class="box">
        <button class="btn">Notifications <i class="fa-solid fa-bell"></i> </button>
    </div>
    <div class="box">
        <button class="btn">Appearance <i class="fa-solid fa-eye"></i> </button>
    </div>
    <div class="box">
        <button class="btn">Privacy <i class="fa-solid fa-lock"></i> </button>
    </div>
    <div class="box">
        <button class="btn">Support <i class="fa-solid fa-message"></i></button>
    </div>

    </div>
    </div>
    </section>
    </main>
    </div>
    </form>
</body>
</html>
