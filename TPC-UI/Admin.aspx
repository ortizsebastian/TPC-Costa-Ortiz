<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w-50" style="padding-top: 7rem !important; padding-left: 5rem !important; padding-bottom: 5rem !important;">
        <div class="card shadow-lg">
            <div class="card-header">
                Configuraciones
            </div>
            <div class="card-body">
                <h5 class="card-title">Acceso únicamente para cuentas Administradoras.</h5>
                <p class="card-text">ABM de Productos y/o sus Componentes.</p>
                <a href="Admin-Productos.aspx" class="btn btn-primary">Productos</a>
                <a href="Admin-Componentes.aspx" class="btn btn-primary mx-3">Componentes</a>
            </div>
        </div>
    </div>

</asp:Content>
