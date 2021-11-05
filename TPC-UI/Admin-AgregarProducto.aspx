<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Admin-AgregarProducto.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_AgregarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="padding-left: 7rem !important; padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card w-50 shadow-lg border-1 border-dark">
            <div class="card-body">
                <div class="container mt-4 d-flex justify-content-between">

                    <div class="col mx-3">
                        <form>
                            <div class="mb-3">
                                <label>Nombre</label>
                                <asp:TextBox ID="txtNombre" class="form-control" placeholder="Nombre" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label>Descripción</label>
                                <asp:TextBox ID="txtDescripcion" class="form-control" placeholder="Descripción" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label>Precio</label>
                                <asp:TextBox ID="txtPrecio" class="form-control" placeholder="Precio" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label>Stock</label>
                                <asp:TextBox ID="txtStock" class="form-control" placeholder="Stock" runat="server"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label>Imagén</label>
                                <asp:TextBox ID="txtImg" class="form-control" placeholder="Imagén" runat="server"></asp:TextBox>
                            </div>
                        </form>
                    </div>


                    <div class="col mx-3">
                        <form>
                            <div class="mb-3">
                                <label for="disabledSelect">Genero</label>
                                <select id="disabledSelect1" class="form-select">
                                    <option>Disabled select</option>
                                </select>
                            </div>
                            
                            <div class="mb-3">
                                <label for="disabledSelect">Talle</label>
                                <select id="disabledSelect2" class="form-select">
                                    <option>Disabled select</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="disabledSelect">Categoría</label>
                                <select id="disabledSelect3" class="form-select">
                                    <option>Disabled select</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="disabledSelect">Marca</label>
                                <select id="disabledSelect4" class="form-select">
                                    <option>Disabled select</option>
                                </select>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="mb-3 mx-4">
                    <hr>
                    <asp:Button Text="Agregar" ID="btnAgregar" class="btn btn-dark shadow-lg" runat="server" OnClick="btnAgregar_Click"/>
                    <a class="btn btn-dark shadow-lg">Limpiar</a>
                </div>

            </div>
        </div>
    </div>








</asp:Content>
