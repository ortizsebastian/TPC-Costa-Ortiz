<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagar.aspx.cs" Inherits="TPC_Ortiz_Costa.Comprar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .button {
            transition: all .5s ease !important;
            border-radius: 15px !important;           
        }

            .button:hover {
                color: white !important;
                background-color: rgb(179, 0, 0) !important;
            }
    </style>

    <div style="padding-top: 7rem; padding-bottom: 3rem">
        <div class="card card-body shadow-sm mx-auto" style="width: 80% !important; border-radius: 15px !important;">
            <div class="container">
                <div class="row">

                    <%--Carrito--%>
                    <div class="col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-2 mx-3">
                            <span class="text-muted">Carrito</span>
                            <span class="badge-pill"><%:Contenido %></span>
                        </h4>
                        <ul class="list-group mb-3">

                            <% foreach (var Articulo in Carrito)
                                {%>                             
                            <li class="list-group-item d-flex justify-content-between lh-condensed border-0 shadow-sm"  style="border-radius: 15px !important;">
                                <div>
                                    <h6 class="my-0"><%:Articulo.Nombre %></h6>
                                    <small class="text-muted"><%:Articulo.Descripcion %></small>
                                </div>
                                <span class="text-muted">$<%:decimal.Round(Articulo.Precio) %></span>
                            </li>
                            <%} %>

<%--                            <li class="list-group-item d-flex justify-content-between bg-light">
                                <div class="text-success">
                                    <h6 class="my-0">Promo code</h6>
                                    <small>EXAMPLECODE</small>
                                </div>
                                <span class="text-success">-$5</span>
                            </li>--%>

                            <li class="list-group-item d-flex justify-content-between my-3 shadow-sm" style="border-radius: 15px !important;">
                                <span>Total ($)</span>
                                <strong>$<%:decimal.Round(Precio) %></strong>
                            </li>
                        </ul>

                        <div class="card p-2 bg-transparent border-0">
                            <div class="input-group">
                                <div class="input-group-append mx-auto">
                                    <asp:Button style="z-index: 0" class="btn btn-light text-dark shadow-sm" Text="Retirar en la Sucursal" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--Direccion del Comprador--%>
                    <div class="col-md-8 order-md-1">
                        <h4 class="mb-3">Información del Envío</h4>
                        <div class="needs-validation" novalidate="">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">Nombre</label>
                                    <asp:TextBox ID="txtNombre" placeholder="Nombre" CssClass="form-control" runat="server" />
                                    <div class="invalid-feedback">
                                        Valid first name is required.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">Apellido</label>
                                    <asp:TextBox ID="txtApellido" placeholder="Apellido" CssClass="form-control" runat="server" />
                                    <div class="invalid-feedback">
                                        Valid last name is required.
                                    </div>
                                </div>
                            </div>

<%--                            <div class="mb-3">
                                <label for="username">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" id="username" placeholder="Username" required="">
                                    <div class="invalid-feedback" style="width: 100%;">
                                        Your username is required.
                                    </div>
                                </div>
                            </div>--%>

                            <div class="mb-3">
                                <label for="email">Email <span class="text-muted">(Requerido)</span></label>
                                <asp:TextBox ID="txtEmail" placeholder="ejemplo@ejemplo.com" CssClass="form-control" runat="server" />                            
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="address">Domicilio</label>
                                <asp:TextBox ID="txtDomicilio" placeholder="Av. 9 de Julio 2550" CssClass="form-control" runat="server" />                                                      
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

<%--                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <label for="country">Country</label>
                                    <select class="form-select d-block w-100" id="country" required="">
                                        <option value="">Choose...</option>
                                        <option>United States</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="state">State</label>
                                    <select class="form-select d-block w-100" id="state" required="">
                                        <option value="">Choose...</option>
                                        <option>California</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please provide a valid state.
                                    </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="zip">Zip</label>
                                    <input type="text" class="form-control" id="zip" placeholder="" required="">
                                    <div class="invalid-feedback">
                                        Zip code required.
                                    </div>
                                </div>
                            </div>--%>

                            <hr class="mb-4">
                            <div class="custom-control custom-checkbox">
                                <asp:RadioButton CssClass="custom-control-label"  runat="server" />
                                <label class="custom-control-label" for="same-address">Usar el domicilio registrado en mi cuenta.</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <asp:RadioButton CssClass="custom-control-label"  runat="server" />
                                <label class="custom-control-label" for="save-info">Actualizar mi información personal para la próxima compra.</label>
                            </div>
                            <hr class="mb-4">

                            <%--Forma de pago--%>
                            <h4 class="mb-3">Método de Pago</h4>
                            <div class="d-block my-3">
                                <div class="custom-control custom-radio">
                                    <asp:RadioButton CssClass="custom-control-label" runat="server" />
                                    <label class="custom-control-label" for="credit">Tarjeta de Crédito</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <asp:RadioButton CssClass="custom-control-label"  runat="server" />                                
                                    <label class="custom-control-label" for="debit">Tarjeta de Débito</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <asp:RadioButton CssClass="custom-control-label"  runat="server" />
                                    <label class="custom-control-label" for="paypal">Rapipago/Pago fácil</label>
                                </div>
                            </div>

                            <%--Datos de la tarjeta--%>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="cc-name">Títular</label>
                                    <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                                    <small class="text-muted">Nombre completo de la persona títular.</small>
                                    <div class="invalid-feedback">
                                        Name on card is required
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="cc-number">Número</label>
                                    <input type="text" class="form-control" placeholder="" required="">
                                    <div class="invalid-feedback">
                                        Credit card number is required
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="cc-expiration">Vencimiento</label>
                                    <input type="text" class="form-control" id="Fecha" placeholder="" required="">
                                    <div class="invalid-feedback">
                                        Expiration date required
                                    </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="cc-expiration">CVV</label>
                                    <input type="text" class="form-control" id="Código de seguridad" placeholder="" required="">
                                    <div class="invalid-feedback">
                                        Security code required
                                    </div>
                                </div>
                                <div class="col-md-3 mb-3 my-auto">
                                    <asp:DropDownList AppendDataBoundItems="true" runat="server" class="form-select">
                                        <Items>
                                            <asp:ListItem Text="Coutas" Value="-1" />
                                            <asp:ListItem Text="1" />
                                            <asp:ListItem Text="3 s/interés" />
                                            <asp:ListItem Text="6 s/interés" />
                                            <asp:ListItem Text="12 s/interés" />
                                        </Items>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <hr class="mb-4">
                            <button class="btn btn-light shadow-sm button btn-lg btn-block" type="submit">Continuar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

            <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="../../assets/js/vendor/popper.min.js"></script>
        <script src="../../dist/js/bootstrap.min.js"></script>
        <script src="../../assets/js/vendor/holder.min.js"></script>
        <script>
          // Example starter JavaScript for disabling form submissions if there are invalid fields
          (function() {
            'use strict';

            window.addEventListener('load', function() {
              // Fetch all the forms we want to apply custom Bootstrap validation styles to
              var forms = document.getElementsByClassName('needs-validation');

              // Loop over them and prevent submission
              var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                  if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                  }
                  form.classList.add('was-validated');
                }, false);
              });
            }, false);
          })();
        </script>
  
    </div>

</asp:Content>
