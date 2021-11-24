<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Ortiz_Costa.Carrito" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .size span {
            font-size: 11px
        }

        .color span {
            font-size: 11px
        }

        .product-deta {
            margin-right: 70px
        }

        .pay-button {
            color: #fff
        }

            .pay-button:hover {
                color: #fff
            }

            .pay-button:focus {
                color: #fff;
                box-shadow: none
            }

        .text-grey {
            color: #a39f9f
        }

        .qty i {
            font-size: 11px
        }
    </style>

    <%if (Contenido != null && Contenido.Count() != 0)
        {
    %>

    <div class="container mt-5 mb-5" style="padding-top: 3rem !important;">
        <div class="d-flex justify-content-center row">
            <div class="col-md-8">
                <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded card card-body shadow-lg">
                    <p class="mx-auto my-auto">Precio: $<%:decimal.Round(Total) %></p>
                    <p class="mx-auto my-auto">Artículos: <%:Cantidad %></p>
                </div>

                <% 
                    foreach (var Articulo in Contenido)
                    {
                %>
                <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded shadow-lg border-1 border-dark">
                    <div class="mr-1">
                        <img class="rounded" src="<%:Articulo.ImgUrl %>" width="70"></div>
                    <div class="d-flex flex-column align-items-center product-details">
                        <span class="font-weight-bold"><%:Articulo.Nombre %></span>
                        <div class="d-flex flex-row product-desc">
                            <div class="size mr-1 mx-2"><span class="text-grey">Talle: </span><span class="font-weight-bold"><%:Articulo.Talle.Medida %></span></div>
                            <div class="color"><span class="text-grey">Marca: </span><span class="font-weight-bold"><%:Articulo.Marca.Nombre %></span></div>
                        </div>
                    </div>
                    <div>
                        <h5 class="text-grey">$ <%:decimal.Round(Articulo.Precio) %></h5>
                    </div>
                    <a href="Carrito.aspx?Remove=<%:Articulo.Id %>">
                        <div class="d-flex align-items-center"><i class="fa fa-trash mb-1 text-danger"></i></div>
                    </a>
                </div>
                <%
                    }
                %>
                <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded">
                    <input type="text" class="form-control border-0 gift-card" placeholder="Código de Descuento / Gift Card">
                    <button class="btn btn-outline-warning btn-sm ml-2" type="button">Aplicar</button></div>

                <div>
                    <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded">
                        <div>
                            <a href="Catalogo.aspx" class="btn btn-dark btn-block btn-lg ml-2">Seguir Comprando</a> 
                            <a href="Pagar.aspx" class="btn btn-warning btn-block btn-lg ml-2 pay-button mx-2">Finalizar Compra</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <%}
         else
         {
             Response.Redirect("Catalogo.aspx");
         }%>

</asp:Content>
