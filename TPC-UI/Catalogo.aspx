<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="TPC_UI.Web_Catalogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="body-body">

        <div class="input-group rounded"></div>

        <div class="carousel" data-flickity='{ "wrapAround": true, "autoPlay": true, "imagesLoaded":true }'>

            <div class="carousel-cell">
                <img class="w3-image" style="width: 100%" src="https://business-intelligence.grupobit.net/hs-fs/hubfs/Imagen_Blog_BIT_1600x478px_240119.jpg?width=1600&name=Imagen_Blog_BIT_1600x478px_240119.jpg">
            </div>

            <div class="carousel-cell">
                <img class="w3-image" style="width: 100%;" src="https://i.postimg.cc/fWtBZ3Fz/Envio-GTT.jpg">
            </div>

<%--            <div class="carousel-cell">
                <img class="w3-image" style="width: 100%" src="URL-IMAGEN!!">
            </div>--%>

        </div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>



    <div style="padding-top: 3rem !important;">
    <%if (Session["User"] != null)
      {%>
        <a href="Admin-Articulos.aspx" style="text-decoration: none; color: inherit;">
            <div class="Agregar-btn shadow-lg">
                <asp:ImageButton class="btn" Style="width: 60px;" ImageUrl="~/Img/upload.png" runat="server" ID="btnAlta" OnClick="btnAlta_Click" />
                <div class="P-alta">
                    <p>Cargar Artículo</p>
                </div>
            </div>
        </a>
    <%}%>
    </div>
  

    <div class="row row-cols-1 row-cols-md-3 g-4 mx-5">

        <% foreach (var Articulo in ListaArticulos)
           {
        %>
            <div class="col">
                <div class="card border-1 border-dark">                   
                                             
                    <%if (Session["User"] != null)
                      {%>
                        <div class="my-2">
                            <a href="Admin-Articulos.aspx?Modify=<%:Articulo.Id %>" class="btn shadow-sm border-1 border-dark shadow-lg mx-2">
                                <img src="/Img/edit.png" style="width: 25px;" />
                            </a>
                            <a href="Catalogo.aspx?Delete=<%:Articulo.Id %>" class="btn shadow-sm border-1 border-dark shadow-sm">
                                <img src="/Img/delete.png" style="width: 25px;" />
                            </a>
                        </div>
                    <%}%>

                    
                    <a href="Catalogo-Detalle.aspx?Id=<%: Articulo.Id %>" style="text-decoration: none; color: inherit;">
                        <div class="card bg-transparent border-0">
                            <img class="card-img-top w-50 mx-auto" src="<%: Articulo.ImgUrl %>">
                            <div class="card-body">
                                <h5 class="card-title text-center"><%: Articulo.Nombre %></h5>
                                <p class="text-center" style="font-size: 15px !important;"><i>Código: </i><%: Articulo.Codigo %></p>
                            </div>
                        </div>
                    </a>
                    <div class="card-footer">               
                        <div class="d-flex justify-content-between w-100 position-relative top-40-percent">
                            <div>
                                <small class="text-muted">Precio: $<%: decimal.Round(Articulo.Precio) %></small><br>
                                <small class="text-muted">Stock: <%: Articulo.Stock %></small>
                            </div>                   
                            <a href="Carrito.aspx?Id=<%: Articulo.Id %>" class="btn btn-sm border-1 border-dark shadow-lg" style="text-decoration: none; color: inherit;">
                                <img src="/Img/add.png" style="width: 40px;"/>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        <%
           }
        %>
    </div>

        <!-- Cartel de  pagos/Envios/Seguridad  (referencia wpp) -->

</div>


<footer class="text-center text-lg-start text-muted" style="background-color: transparent !important; padding-top: 8rem !important;">
    
  <section style="border-top: 1px solid black">
    <div class="container text-center text-md-start mt-5">
      <div class="row mt-3">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Ecommerce
          </h6>
          <p>
           Las mejores marcas de indumentaria y accesorios al alcance de la palma de tu mano.
          </p>
        </div>

        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4 mx-auto">
            Newsletter
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Articulo 1</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Articulo 2</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Articulo 3</a>
          </p>
        </div>

        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Utilidades
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Guía de Talles</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Guía de Compra</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">FAQ</a>
          </p>
        </div>

        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Ubicación
          </h6>
          <p><i class="fas fa-home me-3"></i>Buenos Aires</p>
          <p><i class="fas fa-envelope me-3"></i>info@eCommerce.com</p>
        </div>
      </div>
    </div>
  </section>

</footer>
</asp:Content>
