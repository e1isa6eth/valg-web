<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminside.aspx.cs" Inherits="webapptest.Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator</title>

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
                <a class="nav-link" href="stemmestatus.aspx">Stemme status</a>
              </div>
            </div>
          </div>
    </nav>


        <form id="form1" runat="server">
        <br/>

         <div class="itemLeft">
             
             <h2 style="color: white;">KOMMUNER</h2>
             <hr />
        <h4 style="color: white;">Legg til ny kommune:</h4>
        <br />
        <asp:TextBox ID="TextBoxLeggTilKommune" runat="server" Width="100%" CssClass="form-control bg-dark text-light">kommune navn...</asp:TextBox>
        <br />
          
        <asp:TextBox ID="TextBoxLeggTilKid" runat="server" CssClass="form-control bg-dark text-light">kommune ID...</asp:TextBox><br /><br />
        <asp:Button ID="ButtonLeggTil" runat="server" Text="Legg til" OnClick="ButtonLeggTil_Click" Width="112px" CssClass="btn btn-dark"/>
        
        <br />
        <br />
        <br />

             
        <h4 style="color: white;">Slett kommune:</h4>
 
        <asp:TextBox ID="SlettKommuneTextBox" runat="server" Width="100%" CssClass="form-control bg-dark text-light">kommune navn...</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonSlettKommune" runat="server" Text="Slett" OnClick="ButtonSlettKommune_Click" Width="112px" CssClass="btn btn-dark"/>
        <br />
        <br />


        <h4 style="color: white;">Oppdater kommune:</h4>
        <asp:TextBox ID="KommuneGammelTextBox" runat="server" CssClass="form-control bg-dark text-light">kommune navn...</asp:TextBox>
        <br />
        <asp:TextBox ID="KommuneNyTextBox" runat="server" CssClass="form-control bg-dark text-light">ny kommune navn...</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="OppdaterKommuneButton" runat="server" OnClick="OppdaterKommuneButton_Click" Text="Oppdater" Width="112px" CssClass="btn btn-dark"/>
        <br />
        <br />
      <h4 style="color: white;">Søk etter kommune:</h4>
        <p>
            <asp:TextBox ID="SøkKommuneTekst" runat="server" CssClass="form-control bg-dark text-light">F.eks. Fredrikstad</asp:TextBox>
        </p>
        <p>
            <asp:Button ID="SøkKommuneButton" runat="server" Text="Søk" OnClick="SøkKommuneButton_Click" Width="112px" CssClass="btn btn-dark"/>
        </p>
             <p>
                 &nbsp;</p>
             <p>
                 <asp:Button ID="OversiktKommunerButton" runat="server" OnClick="GetAllKommuner_Click" Text="Se alle kommuner" Width="100%" CssClass="btn btn-dark"/>
             </p>
             <p>
                 &nbsp;</p>
             <p>
                 &nbsp;</p>
             <p>
                 &nbsp;</p>
             
             <h2 style="color: white;">PARTIER</h2>
             <hr />
             <h4 style="color: white;">Legg til ny parti:</h4><br />
        <asp:TextBox ID="TextBoxLeggTilPartiNavn" runat="server" CssClass="form-control bg-dark text-light">parti navn... </asp:TextBox>
        <br />
          
        <asp:TextBox ID="TextBoxLeggTilPid" runat="server" CssClass="form-control bg-dark text-light">parti ID...</asp:TextBox><br /><br />
        <asp:Button ID="ButtonLeggTil0" runat="server" Text="Legg til" OnClick="ButtonLeggTilParti_Click" Width="112px" CssClass="btn btn-dark"/>
        
        <br />
        <br />
        <br />


        <h4 style="color: white;">Slett parti:</h4>
 
        <asp:TextBox ID="SlettPartiTextBox" runat="server" CssClass="form-control bg-dark text-light">parti navn...</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonSlettParti" runat="server" Text="Slett" OnClick="ButtonSlettParti_Click" Width="112px" CssClass="btn btn-dark"/>
        <br />
        <br />


        <h4 style="color: white;">Oppdater parti:</h4>
        <asp:TextBox ID="PartiGammelTextBox" runat="server" CssClass="form-control bg-dark text-light">parti navn...</asp:TextBox>
        <br />
        <asp:TextBox ID="PartiNyTextBox" runat="server" CssClass="form-control bg-dark text-light">parti ny navn...</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="OppdaterPartiButton" runat="server" OnClick="OppdaterPartiButton_Click" Text="Oppdater" Width="112px" CssClass="btn btn-dark"/>
        <br />
        <br />
      <h4 style="color: white;">Søk etter parti:</h4>
        <p>
            <asp:TextBox ID="SøkPartiTekst" runat="server" CssClass="form-control bg-dark text-light">F.eks. Venstre</asp:TextBox>
        </p>
        <p>
            <asp:Button ID="SøkPartButton" runat="server" Text="Søk" OnClick="SøkPartiButton_Click" Width="112px" CssClass="btn btn-dark"/>
        </p>
             <p>
                 &nbsp;</p>

             <p>
                 <asp:Button ID="OversiktPartier" runat="server" Text="Se alle partier" Width="100%" OnClick="OversiktPartier_Click" CssClass="btn btn-dark"/>
             </p>
            </div>
            
          <div class = "itemRight grid">
         <asp:GridView ID="GridView1" runat="server"></asp:GridView>

           </div>

             <div class = "itemRight grid">
         <asp:GridView ID="GridView2" runat="server"></asp:GridView>

           </div>
 
   
    <br />
    <br />
     
     </form>
   
</body>
    
</html>
