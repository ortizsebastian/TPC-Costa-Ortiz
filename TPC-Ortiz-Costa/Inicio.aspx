<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TPC_Ortiz_Costa.Web_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="input-group rounded" style="padding-top: 8rem; padding-left: 7rem; padding-right: 7rem;">
      <input type="search" class="form-control rounded w-75 mx-0 shadow-lg" placeholder=" Buscar Artículo" aria-label="Search" aria-describedby="search-addon" />
      <button id="search-button shadow-lg" type="button" class="btn btn-dark">
        <i class="fas fa-search"></i>
      </button>
    </div>



<div class="row row-cols-1 row-cols-md-3 g-4 mx-5 my-5" style="padding-top: 1rem !important;">


<% foreach (var Producto in ListaProductos)
    {        
    %>

    <a href="VerDetalle.aspx" style="text-decoration: none; color: inherit;">
    <div class="col shadow-lg">
        <div class="card h-100">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title"><%: Producto.Nombre %></h5>
                <p class="card-text"><%: Producto.Descripcion %></p>
            </div>
            <asp:ImageButton ImageUrl="Img/Agregar.png" class="mt-auto my-3 mx-auto" style="width: 10% !important;" AlternateText="No Image available" runat="server" /> 
            <div class="card-footer">
                <small class="text-muted">Precio: <%: decimal.Round(Producto.Precio) %></small><br>
                <small class="text-muted">Stock: <%: Producto.Stock %></small>
            </div>
        </div>
    </div>
    </a>

    <%
    }  
    %>

    <a href="VerDetalle.aspx" style="text-decoration: none; color: inherit;">
    <div class="col shadow-lg">
        <div class="card h-100">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Producto 2</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <asp:ImageButton ImageUrl="Img/Agregar.png" class="mt-auto my-3 mx-auto" style="width: 10% !important;" AlternateText="No Image available" runat="server" />
            <div class="card-footer">
                <small class="text-muted">Precio y Stock.</small>
            </div>
        </div>
    </div>
    </a>

    <a href="VerDetalle.aspx" style="text-decoration: none; color: inherit;">
    <div class="col shadow-lg">
        <div class="card h-100">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Producto 3</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <asp:ImageButton ImageUrl="Img/Agregar.png" class="mt-auto my-3 mx-auto" style="width: 10% !important;" AlternateText="No Image available" runat="server" />
            <div class="card-footer">
                <small class="text-muted">Precio y Stock.</small>
            </div>
        </div>
    </div>
    </a>

    <a href="VerDetalle.aspx" style="text-decoration: none; color: inherit;">
    <div class="col shadow-lg">
        <div class="card h-100">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Producto 4</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <asp:ImageButton ImageUrl="Img/Agregar.png" class="mt-auto my-3 mx-auto" style="width: 10% !important;" AlternateText="No Image available" runat="server" />
            <div class="card-footer">
                <small class="text-muted">Precio y Stock.</small>
            </div>
        </div>
    </div>
    </a>

    <a href="VerDetalle.aspx" style="text-decoration: none; color: inherit;">
    <div class="col shadow-lg">
        <div class="card h-100">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Producto 5</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <asp:ImageButton ImageUrl="Img/Agregar.png" class="mt-auto my-3 mx-auto" style="width: 10% !important;" AlternateText="No Image available" runat="server" />
            <div class="card-footer">
                <small class="text-muted">Precio y Stock.</small>
            </div>
        </div>
    </div>
    </a>

    <a href="VerDetalle.aspx" style="text-decoration: none; color: inherit;">
    <div class="col shadow-lg">
        <div class="card h-100">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Producto 6</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <asp:ImageButton ImageUrl="Img/Agregar.png" class="mt-auto my-3 mx-auto" style="width: 10% !important;" AlternateText="No Image available" runat="server" />
            <div class="card-footer">
                <small class="text-muted">Precio y Stock.</small>
            </div>
        </div>
    </div>
    </a>

    <a href="VerDetalle.aspx" style="text-decoration: none; color: inherit;">
    <div class="col shadow-lg">
        <div class="card h-100">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Producto 7</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
            </div>
            <asp:ImageButton ImageUrl="Img/Agregar.png" class="mt-auto my-3 mx-auto" style="width: 10% !important;" AlternateText="No Image available" runat="server" />
            <div class="card-footer">
                <small class="text-muted">Precio y Stock.</small>
            </div>
        </div>
    </div>
    </a>



</div>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
        </symbol>
    </svg>

    <div style="padding-top: 3rem !important;">
        <div class="alert alert-dark d-flex w-25 mx-auto justify-content-center shadow-lg" role="alert">
            <svg class="bi flex-shrink-0 me-2 my-auto" width="24" height="24" role="img" aria-label="Info:">
                <use xlink:href="#info-fill" />
            </svg>
            <div>
                <h5 class="my-auto">¡Envíanos un mensaje!</h5>
            </div>
        </div>
    </div>


    <div class="card w-75 shadow-lg mx-auto">
        <div class="card-body">
            <div class="container py-4">

           
                <form id="contactForm" data-sb-form-api-token="API_TOKEN">

            
                    <div class="mb-3">
                        <label class="form-label" for="name">Nombre</label>
                        <input class="form-control" id="name" type="text" placeholder="Nombre" data-sb-validations="required" />
                        <div class="invalid-feedback" data-sb-feedback="name:required">El nombre es requerido.</div>
                    </div>

               
                    <div class="mb-3">
                        <label class="form-label" for="emailAddress">Email</label>
                        <input class="form-control" id="emailAddress" type="email" placeholder="Email" data-sb-validations="required, email" />
                        <div class="invalid-feedback" data-sb-feedback="emailAddress:required">El Email es requerido.</div>
                        <div class="invalid-feedback" data-sb-feedback="emailAddress:email">El Email es invalido.</div>
                    </div>

            
                    <div class="mb-3">
                        <label class="form-label" for="message">Mensaje</label>
                        <textarea class="form-control" id="message" type="text" placeholder="Mensaje" style="height: 10rem;" data-sb-validations="required"></textarea>
                        <div class="invalid-feedback" data-sb-feedback="message:required">El mensaje es requerido.</div>
                    </div>

                    <!-- Form submissions success message -->
                    <div class="d-none" id="submitSuccessMessage">
                        <div class="text-center mb-3">Mensaje enviado correctamente.</div>
                    </div>

                    <!-- Form submissions error message -->
                    <div class="d-none" id="submitErrorMessage">
                        <div class="text-center text-danger mb-3">Error enviando mensaje.</div>
                    </div>

                   
                    <div class="d-grid">
                        <button class="btn btn-dark mx-auto shadow-lg" id="submitButton" type="submit" style="width:20% !important; border-radius: 40px;">Enviar</button>
                    </div>

                </form>
            </div>
        </div>
    </div>


<footer class="text-center text-lg-start text-muted" style="background-color: white !important; padding-top: 8rem !important;">
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">

    <div class="me-5 d-none d-lg-block">
      <span>Contáctanos en nuestras Redes Sociales:</span>
    </div>

    <div>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-google"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-instagram"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-linkedin"></i>
      </a>
      <a href="#" class="me-4 text-reset" style="text-decoration:none !important;">
        <i class="fab fa-github"></i>
      </a>
    </div>
  </section>

  <section>
    <div class="container text-center text-md-start mt-5">
      <div class="row mt-3">
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Ecommerce
          </h6>
          <p>
           Lorem ipsum dolor sit amet, consectetur adipisicing elit.
          </p>
        </div>

        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Newsletter
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Producto 1</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Producto 2</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Producto 3</a>
          </p>
        </div>

        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Links de ayuda
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Términos y Condiciones</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Guía de Compra</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Preguntas Frecuentes</a>
          </p>
        </div>

        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Ubicación
          </h6>
          <p><i class="fas fa-home me-3"></i> Buenos Aires, GBA, AR</p>
          <p><i class="fas fa-envelope me-3"></i> info@eCommerce.com</p>
        </div>
      </div>
    </div>
  </section>
</footer>



</asp:Content>
