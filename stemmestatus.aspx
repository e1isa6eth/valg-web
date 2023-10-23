<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stemmestatus.aspx.cs" Inherits="Elisabeth_I_stem.stemmestatus" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Statistikk</title>

     <!-- Bootstrap -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  
    <!--------------------- CSS -------------------->
    <link rel="stylesheet" href="css.css"/>

</head>
<body>
     <!-- Nav Bar -->


    <form id="form1" runat="server">
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
                <a class="nav-link" aria-current="page" href="stemmestatus.aspx">Stemme status</a>
              </div>
            </div>
          </div>
    </nav>



              <br />

        <div class="container">
    <div class="row justify-content-center align-items-center";">
        <div class="text-center">

            <h4 style="color: white;">Velg kommunen du vil se resultatet av:</h4>

              <asp:DropDownList ID="ListKommune" runat="server" Height="27px" Width="159px" CssClass="bg-dark text-light">
                   <asp:ListItem Selected="True" Disabled="True" style="display: none;">Velg kommune...</asp:ListItem>
       <asp:ListItem Value="2.2">Hele Norge</asp:ListItem>
            </asp:DropDownList>
              <br />
              <asp:Label ID="lbl" runat="server" Text=" "></asp:Label>
            
              <br />
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Vis antall stemmer"  CssClass="btn btn-dark"/>
              <br />
              <br />
          
              <asp:Button ID="Prosent" runat="server" OnClick="Prosent_Click" Text="Se prosent" Width="149px"  CssClass="btn btn-dark"/>
            </div>
          </div>
              </div>
            


        <asp:Chart ID="Chart1" runat="server" Height="426px" Width="1390px" BackColor="Transparent" BorderlineColor="Transparent" Palette="Grayscale">
            <Series>
                <asp:Series Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
          
        </form>
  
    </body>
    </html>