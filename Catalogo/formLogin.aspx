<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formLogin.aspx.cs" Inherits="Catalogo.formLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="estilos.css" rel="stylesheet" />
</head>
  <body>
    <div class="login-box">
      <h1>Inicio de Sesion</h1>
      <form runat="server">
        <!-- USERNAME INPUT -->
        <label for="username">Usuario</label>
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <!-- PASSWORD INPUT -->
        <label for="password">Contraseña</label>
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
        <asp:Button ID="btnAceptar" runat="server" Text="Ingresar" OnClick="btnAceptar_Click" />
      </form>
    </div>
  </body>
</html>
