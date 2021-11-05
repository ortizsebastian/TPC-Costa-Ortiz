<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-top: 5rem;">
        <div class="alert alert-dark mx-5 my-5" role="alert">
            <h4 class="alert-heading">Hacer un ABM acá.</h4>
            <p>Solo debe estar disponible esta opción si se logeo como Usuario, y a su vez, si es del tipo 'Admin'.</p>
            <a href="Admin-AgregarProducto.aspx">Agregar Productos</a><br />
            <a href="Admin-AgregarProducto-Componentes.aspx">Agregar Composición del Producto</a>
        </div>
    </div>

</asp:Content>
