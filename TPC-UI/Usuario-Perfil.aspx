<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuario-Perfil.aspx.cs" Inherits="TPC_Ortiz_Costa.Usuario_Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-top: 5rem; padding-bottom: 5rem;">
        <div class="card w-75 mx-auto border-1 border-dark">
            <div class="card-body shadow-lg">

                <div class="container rounded bg-white mt-5">
                    <div class="row">
                        <div class="col-md-4 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-3">
                                <img class="rounded-circle mt-5" src="https://i.imgur.com/0eg0aG0.jpg" width="90">
                            </div>
                            <center>
                                <input type="file" name="Foto" class="py-3" />
                            </center>
                        </div>
                        <div class="col-md-8">
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <div>
                                        <asp:Button Text="Cambiar Contraseña" CssClass="btn btn-outline-light text-black" runat="server" ID="btnPass" OnClick="btnPass_Click" />                                
                                    </div>
                                    <asp:Button Text="Editar Perfil" CssClass="btn btn-outline-light text-right text-black" runat="server" ID="btnEditar" OnClick="btnEditar_Click" />
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">
                                        <asp:TextBox ReadOnly="true" runat="server" ID="txtNombre" CssClass="form-control" placeholder="Nombre" Text="" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ReadOnly="true" runat="server" ID="txtApellido" CssClass="form-control" placeholder="Apellido" Text="" />
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <asp:TextBox ReadOnly="true" runat="server" ID="txtEmail" CssClass="form-control" placeholder="Email" Text="" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ReadOnly="true" runat="server" ID="txtTelefono" CssClass="form-control" placeholder="Télefono" Text="" />
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6">
                                        <asp:TextBox ReadOnly="true" runat="server" ID="txtCalle" CssClass="form-control" placeholder="Calle" Text="" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ReadOnly="true" runat="server" ID="txtNumero" CssClass="form-control" placeholder="Numero" Text="" />
                                    </div>
                                    <div class="col-md-6 my-3">
                                        <asp:TextBox ReadOnly="true" runat="server" ID="txtProvincia" CssClass="form-control" placeholder="Provincia" Text="" />
                                    </div>
                                </div>

                                <div class="mt-5 text-right">
                                    <asp:Button Text="Guardar" runat="server" CssClass="btn btn-primary profile-button mx-auto" ID="btnGuardar" OnClick="btnGuardar_Click" /> 
                                    <asp:Button Text="Historial" runat="server" CssClass="btn btn-success profile-button mx-auto" ID="btnHistorial" OnClick="btnHistorial_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
