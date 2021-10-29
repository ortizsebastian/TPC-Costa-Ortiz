<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Contactar.aspx.cs" Inherits="TPC_Ortiz_Costa.Contactar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="text-center" style="padding-top: 2rem !important;">¡Envíanos un mensaje!</h2>

    <div class="card card-body mx-auto border-0" style="background-color: transparent !important; height: 18rem; width: 60%;">
      <form>
        <div class="form-row my-3">
          <div class="col">
            <input type="text" class="form-control" placeholder="Nombre" id="exampleFormControlInput1">
          </div>
        </div>
        <div class="form-group my-3">
          <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email">
        </div>
        <div class="form-group py-sm-3">
          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Mensaje"></textarea>
        </div>
      </form>
      <button class="btn shadow-lg text-dark border-dark myContactForm-Submit text-center my-auto mx-auto">Enviar</button>
    </div>



<footer class="text-center text-lg-start text-muted" style="background-color: white !important;">
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">

    <div class="me-5 d-none d-lg-block">
      <span>Get connected with us on social networks:</span>
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
            <i class="fas fa-gem me-3"></i>Company name
          </h6>
          <p>
            Here you can use rows and columns to organize your footer content. Lorem ipsum
            dolor sit amet, consectetur adipisicing elit.
          </p>
        </div>

        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Products
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Product 1</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Product 2</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Product 3</a>
          </p>
        </div>

        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Useful links
          </h6>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Settings</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Orders</a>
          </p>
          <p>
            <a href="#!" class="text-reset" style="text-decoration:none !important;">Help</a>
          </p>
        </div>

        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Contact
          </h6>
          <p><i class="fas fa-home me-3"></i> Buenos Aires, GBA, AR</p>
          <p><i class="fas fa-envelope me-3"></i> info@example.com</p>
        </div>
      </div>
    </div>
  </section>
</footer>


</asp:Content>
