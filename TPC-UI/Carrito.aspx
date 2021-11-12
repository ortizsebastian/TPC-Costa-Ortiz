<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_UI.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card card-body"></div>

    <% if (Contenido != null)
        {
    %>
        <div class="row row-cols-1 row-cols-md-3 g-4 mx-5" style="padding-top: 5rem !important; padding-bottom: 5rem !important;">

        <% foreach (var Articulo in Contenido)
            {
        %>
            <div class="col" style="width: 25%;">
                <div class="card border-1 border-dark shadow-lg">
                    <div class="m-2">
                        <a href="Carrito.aspx?Remove=<%:Articulo.Id %>" class="btn shadow-sm border-1 border-dark shadow-sm">
                            <img src="/Img/delete.png" style="width: 30px;" />
                        </a>
                    </div>
                    <img class="card-img-top w-50 mx-auto" src="<%: Articulo.ImgUrl %>">
                    <div class="card-body">
                        <h5 class="card-title text-center"><%: Articulo.Nombre %></h5>
                        <p class="text-center" style="font-size: 15px !important;"><i>Código: </i><%: Articulo.Codigo %></p>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-between w-100 position-relative top-40-percent">
                            <div>
                                <small class="text-muted">Precio: $<%: decimal.Round(Articulo.Precio) %></small><br>
                                <small class="text-muted">Stock: <%: Articulo.Stock %></small>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        <%
            }
        %>
        </div>

    <%} %>

</asp:Content>
