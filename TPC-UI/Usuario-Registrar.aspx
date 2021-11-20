<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Registrar.aspx.cs" Inherits="TPC_Ortiz_Costa.Usuario_Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
    function Validar() {
        var User = document.getElementById("<%: txtUsername.ClientID %>");
        var Pass = document.getElementById("<%: txtPassword.ClientID %>");
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
        if (Pass.value === "" || Pass.value === null) {

            Pass.classList.remove("is-valid");
            Pass.classList.add("is-invalid");
            Flag = false;
        }
        else {
            Pass.classList.remove("is-invalid");
            Pass.classList.add("is-valid");
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
    </script>


    <div style="display: flex; justify-content: center; padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card w-50 shadow-lg border-1 border-dark">
            <div class="card-body">
                <div class="container mt-5">
                    <div class="col">
                        <div class="mb-3">
                        </div>
                        <form class="shadow p-4">
                            <div class="mb-3">
                                <label for="username">Usuario</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtUsername" placeholder="Usuario" />
                            </div>

                            <div class="mb-3">
                                <label for="Password">Contraseña</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" placeholder="Contraseña" />
                            </div>

                            <div class="mb-3">
                                <label for="email">Email</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email" />
                            </div>

                            <label class="mb-3">
                                <input type="checkbox" name="subscribeNewsletter">
                                Subscribirse al Newsletter
                            </label>

                            <div class="mb-3">
                                <asp:Button Text="Crear" CssClass="btn btn-dark shadow-lg" runat="server" ID="btnCrear" OnClientClick="return Validar();" OnClick="btnCrear_Click" />
                                <a class="btn btn-dark shadow-lg" href="Catalogo.aspx">Volver</a>
                            </div>

                            <hr>
                            <p class="mb-0">¿Olvidaste tu contraseña? <a href="Usuario-Restablecer.aspx" style="text-decoration: none; color: blue;">Recuperar contraseña</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
