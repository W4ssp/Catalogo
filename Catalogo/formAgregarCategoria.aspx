<%@ Page Title="" Language="C#" MasterPageFile="~/Anonimo.Master" AutoEventWireup="true" CodeBehind="formAgregarCategoria.aspx.cs" Inherits="Catalogo.formAgregarCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="contenido-formulario">
        <h2>Nueva Categoria</h2>
        <br />
        <table>
            <tr>
                <td>Nombre Categoria:</td>
                <td><asp:TextBox ID="txtCategoria" runat="server" width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><asp:Label ID="lblerror" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2" align="right"><asp:Button ID="btnGuardarCategoria" runat="server" Text="Guardar Categoria" Width="210px" OnClick="btnGuardarCategoria_Click"/></td>
            </tr>
        </table>
    </div>

</asp:Content>
