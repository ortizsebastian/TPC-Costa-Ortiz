<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPC_Ortiz_Costa.Carrito" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap');
        body {
            font-family: 'Manrope', sans-serif;
        }

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

        <div class="container mt-5 mb-5">
            <div class="d-flex justify-content-center row">
                <div class="col-md-8">
                    <div class="p-2">
                        <h4>Articulos Seleccionados</h4>
                    </div>
                    <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded">
                        <p>Precio final: <%:decimal.Round(Total) %></p>
                    </div>

              <% 
                foreach (var Articulo in Contenido)
                {
              %>
                    <div class="d-flex flex-row justify-content-between align-items-center p-2 bg-white mt-4 px-3 rounded shadow-lg border-1 border-dark">
                        <div class="mr-1"><img class="rounded" src="<%:Articulo.ImgUrl %>" width="70"></div>
                        <div class="d-flex flex-column align-items-center product-details"><span class="font-weight-bold"><%:Articulo.Nombre %></span>
                            <div class="d-flex flex-row product-desc">
                                <div class="size mr-1 mx-1"><span class="text-grey">Talle: </span><span class="font-weight-bold"><%:Articulo.Talle.Medida %></span></div>
                                <div class="color"><span class="text-grey">Marca: </span><span class="font-weight-bold"><%:Articulo.Marca.Nombre %></span></div>
                            </div>
                        </div>
                        <div class="d-flex flex-row align-items-center qty"><i class="fa fa-minus text-danger"></i>
                            <h5 class="text-grey mt-1 mr-1 ml-1"><%:Articulo.Cantidad %></h5><i class="fa fa-plus text-success"></i>
                        </div>
                        <div>
                            <h5 class="text-grey">$ <%:decimal.Round(Articulo.Precio) %></h5>
                        </div>
                        <a href="Carrito.aspx?Remove=<%:Articulo.Id %>"><div class="d-flex align-items-center"><i class="fa fa-trash mb-1 text-danger"></i></div></a>
                        
                        <div class="d-flex align-items-center">
                          <asp:DropDownList runat="server"></asp:DropDownList>
                        </div>
                    </div>
              <%
                }
              %>
                    <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded"><input type="text" class="form-control border-0 gift-card" placeholder="Código de Descuento / Gift Card"><button class="btn btn-outline-warning btn-sm ml-2" type="button">Aplicar</button></div>
                    <div class="d-flex flex-row align-items-center mt-3 p-2 bg-white rounded"><button class="btn btn-warning btn-block btn-lg ml-2 pay-button" type="button">Comprar!</button></div>
                </div>
            </div>
        </div>


     <%}
       else
       {
           Response.Redirect("Catalogo.aspx");
       }%>



<%--
    <% if (Contenido != null && Contenido.Count() != 0)
        {
    %>
    <div class="row row-cols-1 row-cols-md-3 g-4 mx-5" style="padding-top: 5rem !important; padding-bottom: 5rem !important;">

        <% 
            foreach (var Articulo in Contenido)
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
    <%}
        else
        {
            Response.Redirect("Catalogo.aspx");
        }%>--%>

</asp:Content>
