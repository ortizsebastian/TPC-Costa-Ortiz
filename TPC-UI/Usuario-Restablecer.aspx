<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Restablecer.aspx.cs" Inherits="TPC_Ortiz_Costa.Usuario_Restablecer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        function ValidarBuscar() {
            var User = document.getElementById("<%: txtUsername.ClientID %>");
            var Email = document.getElementById("<%: txtEmail.ClientID %>");
            var Flag = true;

            if (User.value === "" || User.value === null) {

                User.classList.remove("is-valid");
                User.classList.add("is-invalid");
                Flag = false;
            }
            else {
                User.classList.remove("is-invalid");
                User.classList.add("is-valid");
                Flag = true;
            }
            if (Email.value === "" || Email.value === null) {

                Email.classList.remove("is-valid");
                Email.classList.add("is-invalid");
                Flag = false;
            }
            else {
                Email.classList.remove("is-invalid");
                Email.classList.add("is-valid");
                Flag = true;
            }
            return Flag;
        }

        function ValidarRestablecer() {
            var Restablecer = document.getElementById("<%: txtRestablecer.ClientID %>");
            var Verificar = document.getElementById("<%: txtVerificar.ClientID %>");
            var Flag = true;

            if (Restablecer.value === "" || Restablecer.value === null) {

                Restablecer.classList.remove("is-valid");
                Restablecer.classList.add("is-invalid");
                Flag = false;
            }
            else {
                Restablecer.classList.remove("is-invalid");
                Restablecer.classList.add("is-valid");
                Flag = true;
            }
            if (Pass.value === "" || Pass.value === null) {

                Verificar.classList.remove("is-valid");
                Verificar.classList.add("is-invalid");
                Flag = false;
            }
            else {
                Pass.classList.remove("is-invalid");
                Pass.classList.add("is-valid");
                Flag = true;
            }
            return Flag;
        }
    </script>


    <div style="display: flex; justify-content: center; padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card w-50 shadow-lg border-1 border-dark">
            <div class="card-body">

                <div class="container mt-5">
                    <div class="col">
                        <div class="mb-3">
                        </div>

                        <%if (Session["Restablecer"] == null)
                            {%>
                        <form class="shadow p-4">
                            <div class="mb-3">
                                <label for="username">Usuario</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtUsername" placeholder="Usuario" />
                            </div>

                            <div class="mb-3">
                                <label for="username">Email</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email" />
                            </div>

                            <div class="mb-3">
                                <asp:Button OnClientClick="return ValidarBuscar();" OnClick="btnBuscar_Click" CssClass="btn btn-dark shadow-lg" ID="btnBuscar" Text="Buscar" runat="server" />
                                <a class="btn btn-dark shadow-lg" href="Catalogo.aspx">Volver</a>
                            </div>
                            <hr>
                            <p class="mb-0">Ingrese los datos de su cuenta para poder localizarla en nuestro sistema.</p>
                        </form>
                        <%}
                            else
                            {%>
                        <form class="shadow p-4">
                            <div class="mb-3">
                                <label for="username">Nueva Contraseña</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtRestablecer" type="password" />
                            </div>

                            <div class="mb-3">
                                <label for="username">Verificar Contraseña</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtVerificar" type="password" />
                            </div>

                            <div class="mb-3">
                                <asp:Button OnClientClick="return ValidarRestablecer();" OnClick="btnRestablecer_Click" CssClass="btn btn-dark shadow-lg" ID="btnRestablecer" Text="Restablecer" runat="server" />
                                <a class="btn btn-dark shadow-lg" href="Catalogo.aspx">Volver</a>
                            </div>
                        </form>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
