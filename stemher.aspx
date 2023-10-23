<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stemher.aspx.cs" Inherits="Elisabeth_I_stem.stemher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stem</title>
   

     <!-- Bootstrap -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  
     <!--------------------- CSS -------------------->
    <link rel="stylesheet" href="css.css"/>


</head>
<body>
       <!-- Nav Bar -->
        <nav class="navbar sticky-top justify-content-between navbar-expand-lg">
          <div class="container-fluid">
            <a class="navbar-brand">Istem</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav ms-auto">
                <a class="nav-link" href="adminlogginn.aspx">Admin</a>
                <a class="nav-link" href="logginn.aspx">Stem her</a>
                <a class="nav-link"  href="stemmestatus.aspx">Stemme status</a>
              </div>
            </div>
          </div>
    </nav>
       
    <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
    <form id="form1" runat="server">
       <div class="container">
    <div class="row justify-content-center align-items-center";>
        <div class="text-center">
          &nbsp;
            <h4 style="color: white;">Velg partiet du vil stemme for</h4>
            <br />
              <asp:DropDownList ID="ListParti" runat="server" Height="26px" Width="149px" CssClass="bg-dark text-light">
                  
                   <asp:ListItem Selected="True" Disabled="True" style="display: none;">Velg parti..</asp:ListItem>
                
            </asp:DropDownList>


            <br />
            <br />
            <asp:Button ID="ButtonVote" runat="server" Text="Stem" OnClick="ButtonVote_Click"  CssClass="btn btn-dark" Width="83px" />
            

            
        </div>
        </div>
        </div>
           
           
        <asp:Label ID="lbl" runat="server" Text=" " ForeColor="White"></asp:Label>
           
    </form>
    
</body>
</html>
