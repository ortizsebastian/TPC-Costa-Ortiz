<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Ingresar.aspx.cs" Inherits="TPC_UI.Usuario_Ingresar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="padding-left: 7rem !important; padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card w-50 shadow-lg border-1 border-dark">
            <div class="card-body">

                <div class="container mt-5">
                    <div class="col">
                        <div class="mb-3">
                        </div>
                        <form class="shadow p-4">
                            <div class="mb-3">
                                <label for="username">Email/Usuario</label>
                                <input type="email" class="form-control" name="username" id="username" placeholder="Email/Usuario">
                            </div>

                            <div class="mb-3">
                                <label for="Password">Contraseña</label>
                                <input type="password" class="form-control" name="password" id="Password" placeholder="Contraseña">
                            </div>

                            <label class="mb-3">
                                <input type="checkbox" name="RememberMe">
                                Recordarme
                            </label>

                            <div class="mb-3">
                                <button type="submit" class="btn btn-dark shadow-lg">Conectar</button>
                                <a class="btn btn-dark shadow-lg" href="Catalogo.aspx">Volver</a>
                            </div>

                            <hr>
                            <p class="mb-0">¿Eres nuevo? <a href="Usuario-Registrar.aspx" style="text-decoration: none;">Crear cuenta</a></p>
                            <p class="mb-0">¿Olvidaste tu contraseña? <a href="Usuario-Restablecer.aspx" style="text-decoration: none;">Recuperar contraseña</a></p>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
