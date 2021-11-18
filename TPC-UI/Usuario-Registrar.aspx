<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Registrar.aspx.cs" Inherits="TPC_UI.Usuario_Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtUsername" /> 
                            </div>

                            <div class="mb-3">
                                <label for="Password">Contraseña</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" /> 
                            </div>

                            <div class="mb-3">
                                <label for="email">Email</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />                             
                            </div>

                            <label class="mb-3">
                                <input type="checkbox" name="subscribeNewsletter">
                                Subscribirse al Newsletter
                            </label>

                            <div class="mb-3">
                                <asp:Button Text="Crear" CssClass="btn btn-dark shadow-lg" runat="server" ID="btnCrear" OnClick="btnCrear_Click"/>
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
