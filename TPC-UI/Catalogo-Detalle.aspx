<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogo-Detalle.aspx.cs" Inherits="TPC_Ortiz_Costa.Catalogo_Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="padding-top: 6rem; padding-bottom: 6rem; display: flex; justify-content: center;">
        <div class="card mb-3 shadow-lg border-1 border-dark" style="min-width: 1240px; max-width: 1240px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="<%:Articulo.ImgUrl %>" class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h3 class="card-title"><%:Articulo.Nombre %></h3>
                        <p class="card-text" style="padding-top: 5rem !important;"><%:Articulo.Descripcion %></p>
                        <hr>
                        <p class="card-text"><small class="text-muted"><span>Precio: $<%:decimal.Round(Articulo.Precio) %></span><span class="px-5">Stock: <%:Articulo.Stock %></span><span>Talles disponibles: <%:Articulo.Talle.Medida %></span></small></p>
                        <hr>
                        <p class="card-text"><small class="text-muted"><span>Marca: <%:Articulo.Marca.Nombre %></span><span class="px-5">Categoría: <%:Articulo.Categoria.Nombre %></span></small></p>
                        <hr>

                        <a href="Carrito.aspx?Id=<%: Articulo.Id %>" class="btn-agregarAlCarro my-4 shadow-lg">
                            <img src="/Img/add.png" class="img-btn mx-2 my-auto" />
                            <p class="p-Ag-carrito mx-2">Agregar al Carrito</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
