<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Restablecer.aspx.cs" Inherits="TPC_UI.Usuario_Restablecer" %>
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
                                <label for="username">Usuario</label>
                                <input class="form-control" name="username" id="username" placeholder="Usuario">
                            </div>

                            <div class="mb-3">
                                <label for="username">Email</label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                            </div>

                            <div class="mb-3">
                                <a class="btn btn-dark shadow-lg" href="#">Buscar</a>
                                <a class="btn btn-dark shadow-lg" href="Catalogo.aspx">Volver</a>
                            </div>
                            <hr>
                            <p class="mb-0">Ingrese los datos de su cuenta para poder localizarla en nuestro sistema.</p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
