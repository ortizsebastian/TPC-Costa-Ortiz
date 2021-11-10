<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="VerDetalle.aspx.cs" Inherits="TPC_Ortiz_Costa.VerDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="padding-top: 10rem !important; padding-left: 5rem !important; padding-bottom: 7rem !important;">
    <div class="card mb-3 shadow-lg border-1 border-dark" style="min-width: 1240px; max-width: 1240px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="<%:Producto.ImgUrl %>" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title"><%:Producto.Nombre %></h5>
                    <p class="card-text"><%:Producto.Descripcion %></p>
                    <hr>
                    <p class="card-text"><small class="text-muted"><span>Precio: $<%:decimal.Round(Producto.Precio) %></span><span class="px-5">Stock: <%:Producto.Stock %></span><span>Talles disponibles: <%:Producto.Talle.Medida %></span></small></p>
                    <hr>
                    <p class="card-text"><small class="text-muted"><span>Marca: <%:Producto.Marca.Nombre %></span><span class="px-5">Categoría: <%:Producto.Categoria.Nombre %></span><span>Genero: <%:Producto.Genero.Nombre %></span></small></p>
                    <hr>               

                    <asp:ImageButton ImageUrl="Img/add.png" class="d-flex align-items-center mx-auto" style="width: 10% !important; padding-top: 1.5rem !important;" runat="server" /> 
                </div>
            </div>
        </div>
    </div>
    </div>


</asp:Content>
