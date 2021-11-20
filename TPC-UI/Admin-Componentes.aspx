<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin-Componentes.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_Componentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card-body shadow-lg w-75 mx-auto">

            <div class="card w-25 my-3">
                <div class="card-body">
                    <h5 class="card-title">Marcas</h5>
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select p-1" ID="ddlMarca">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="card w-25 my-3">
                <div class="card-body">
                    <h5 class="card-title">Categorías</h5>
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select p-1" ID="ddlCategoria">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="card w-25 my-3">
                <div class="card-body">
                    <h5 class="card-title">Talles</h5>
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select p-1" ID="ddlTalle">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
            </div>

            <div>
                <asp:Button Text="Eliminar" runat="server" CssClass="btn btn-danger mx-auto" ID="btnEliminar" OnClick="btnEliminar_Click" />
            </div>

            <div>
                <div class="form-group my-3">
                    <label>Categoría</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtCategoria" />
                </div>

                <div class="form-group my-3">
                    <label>Marca</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtMarca" />
                </div>

                <div class="form-group my-3">
                    <label>Talle</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtTalle" />
                </div>

                <div class="modal-footer border-0">
                    <asp:Button Text="Agregar" CssClass="btn btn-success" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" />
                </div>
            </div>

        </div>
    </div>

</asp:Content>
