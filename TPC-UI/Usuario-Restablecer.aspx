<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Restablecer.aspx.cs" Inherits="TPC_Ortiz_Costa.Usuario_Restablecer" %>
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
                                <asp:Button OnClick="btnBuscar_Click" CssClass="btn btn-dark shadow-lg" ID="btnBuscar" Text="Buscar" runat="server" />
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
                                <asp:TextBox runat="server" class="form-control" ID="txtRestablecer" />
                            </div>

                            <div class="mb-3">
                                <label for="username">Verificar Contraseña</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtVerificar" />
                            </div>

                            <div class="mb-3">
                                <asp:Button OnClick="btnRestablecer_Click" CssClass="btn btn-dark shadow-lg" ID="btnRestablecer" Text="Restablecer" runat="server" />
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
