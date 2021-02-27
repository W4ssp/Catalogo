<%@ Page Title="" Language="C#" MasterPageFile="~/Anonimo.Master" AutoEventWireup="true" CodeBehind="formModificar.aspx.cs" Inherits="Catalogo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contenido-formulario">
        <h2>Modificar Producto</h2>

        <table>
            <tr>
                <td>Nombre:</td>
                <td><asp:TextBox ID="txtNombre" runat="server" Width="200px"></asp:TextBox></td>
            </tr> 
            <tr>
                <td>Detalle:</td>
                <td><asp:TextBox ID="txtDetalle" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
           <tr>
                <td>Precio:</td>
                <td><asp:TextBox ID="txtPrecio" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
           <tr>
                <td>Stock:</td>
                <td><asp:TextBox ID="txtStock" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Categoria:</td>
                <td><asp:DropDownList ID="cmbCategoria" runat="server" Width="200px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Label ID="lblerror" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><asp:Button ID="btnModificar" runat="server" Text="Modificar" Width="170px" OnClick="btnModificar_Click" /> </td>
            </tr>
        </table>
    </div>
</asp:Content>
