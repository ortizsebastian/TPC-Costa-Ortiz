<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-top: 5rem;">
        <div class="alert alert-dark mx-5 my-3 w-50 shadow-lg" role="alert">
            <h4 class="alert-heading">Alta Productos.</h4>
            <p>Opciones para agregar Productos y/o sus Componentes.</p>
            <a href="Admin-AgregarProducto.aspx" class="btn btn-dark shadow-lg">Agregar Producto</a>
            <a href="Admin-AgregarProducto-Componentes.aspx" class="btn btn-dark mx-auto shadow-lg">Agregar Composición</a>
        </div>
    </div>
    <div>
        <div class="alert alert-danger mx-5 my-3 w-50 shadow-lg" role="alert">
            <h4 class="alert-heading">Baja Productos.</h4>
            <p>Opciones para eliminar Productos y/o sus Componentes.</p>
            <a href="#" class="btn btn-dark shadow-lg">Eliminar Producto</a>
            <a href="#" class="btn btn-dark mx-auto shadow-lg">Eliminar Composición</a>
        </div>
    </div>
    <div>
        <div style="padding-bottom: 3rem !important;">
            <div class="alert alert-success mx-5 my-3 w-50 shadow-lg" role="alert">
                <h4 class="alert-heading">Modificar Productos.</h4>
                <p>Opciones para modificar Productos y/o sus Componentes.</p>
                <a href="#" class="btn btn-dark shadow-lg">Modificar Producto</a>
                <a href="#" class="btn btn-dark mx-auto shadow-lg">Modificar Composición</a>
            </div>
        </div>
    </div>

</asp:Content>
