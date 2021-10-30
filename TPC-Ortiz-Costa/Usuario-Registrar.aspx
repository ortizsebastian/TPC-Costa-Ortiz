<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Registrar.aspx.cs" Inherits="TPC_Ortiz_Costa.Usuario_Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="padding-left: 7rem !important; padding-bottom: 2.5rem !important; padding-top: 2rem !important;">
        <div class="card w-50 shadow-lg">
            <div class="card-body">

                <div class="container mt-5">
                    <div class="col">
                        <div class="mb-3">
                        </div>
                        <form class="shadow p-4">
                            <div class="mb-3">
                                <label for="username">Usuario</label>
                                <input class="form-control" name="username" id="username" placeholder="Usuario">
                            </div>

                            <div class="mb-3">
                                <label for="Password">Contraseña</label>
                                <input type="password" class="form-control" name="password" id="Password" placeholder="Contraseña">
                            </div>

                            <div class="mb-3">
                                <label for="username">Email</label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                            </div>

                            <label class="mb-3">
                                <input type="checkbox" name="subscribeNewsletter">
                                Subscribirse al Newsletter
                            </label>

                            <div class="mb-3">
                                <a class="btn btn-dark" href="#">Crear</a>
                                <a class="btn btn-dark" href="Inicio.aspx">Volver</a>
                            </div>

                            <hr>
                            <p class="mb-0">¿Olvidaste tu contraseña? <a href="Usuario-Restablecer.aspx" style="text-decoration: none;">Recuperar contraseña</a></p>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
