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
                                <asp:DropDownList ID="ddlGenero" runat="server" class="form-select"></asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="disabledSelect">Categoría</label>
                                <asp:DropDownList ID="ddlCategoria" runat="server" class="form-select"></asp:DropDownList>
                            </div>                      
                            <div class="mb-3">
                                <label for="disabledSelect">Marca</label>
                                <asp:DropDownList ID="ddlMarca" runat="server" class="form-select"></asp:DropDownList>
                            </div>
                            <div class="mb-3">
                                <label for="disabledSelect">Talle</label>
                                <asp:DropDownList ID="ddlTalle" runat="server" class="form-select"></asp:DropDownList>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <asp:Button Text="Agregar" ID="btnAgregar" class="btn btn-dark d-flex justify-content-center mx-auto my-3 shadow-lg" runat="server" OnClick="btnAgregar_Click"/>
        </div>
    </div>

</asp:Content>
