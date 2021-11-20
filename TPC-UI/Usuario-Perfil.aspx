<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Perfil.aspx.cs" Inherits="TPC_Ortiz_Costa.Usuario_Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-top: 5rem !important;">
        <div class="card w-75 mx-auto">
            <div class="card-body shadow-lg">

                <div class="container rounded bg-white mt-5">
                    <div class="row">
                        <div class="col-md-4 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-3">
                                <img class="rounded-circle mt-5" src="https://i.imgur.com/0eg0aG0.jpg" width="90"><span class="font-weight-bold">John Doe</span><span class="text-black-50">john_doe12@bbb.com</span><span>United States</span>
                            </div>
                            <center>
                                <input type="file" name="Foto" class="py-3" />
                            </center>
                        </div>
                        <div class="col-md-8">
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <div>
                                        <h6>Cambiar Contraseña</h6>
                                    </div>
                                    <h6 class="text-right">Editar Perfil</h6>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" placeholder="Nombre" Text="" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtApellido" CssClass="form-control" placeholder="Apellido" Text="" />
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Email" Text="" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control" placeholder="Télefono" Text="" />
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtCalle" CssClass="form-control" placeholder="Calle" Text="" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control" placeholder="Numero" Text="" />
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <asp:TextBox runat="server" ID="txtProvincia" CssClass="form-control" placeholder="Provincia" Text="" />
                                    </div>
                                </div>

                                <div class="mt-5 text-right">
                                    <button class="btn btn-primary profile-button mx-auto" type="button">Guardar</button>
                                    <button class="btn btn-success profile-button mx-auto" type="button">Historial</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
