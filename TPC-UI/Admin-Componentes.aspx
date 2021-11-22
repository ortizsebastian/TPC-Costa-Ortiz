<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin-Componentes.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_Componentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="w-75 mx-auto" >

            <!-- Eliminar -->
<div style="display: flex; flex-direction: column; float: right; margin: 10px;">
            <div style="height:100px; width:300px; border: 1px solid silver; margin-bottom: 10px;">
                <div class="card-body">
                    <h5 class="card-title">Marcas</h5>
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select p-1" ID="ddlMarca">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
            </div>

            <div style="height:100px; width:300px; border: 1px solid silver; margin-bottom: 10px;">
                <div class="card-body">
                    <h5 class="card-title">Categorías</h5>
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select p-1" ID="ddlCategoria">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
            </div>

            <div style="height:100px; width:300px; border: 1px solid silver; margin-bottom: 10px;">
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
</div>
            <!-- Agregar -->

            <div style="display: flex; flex-direction: column; float: left; margin: 10px; ">

                

                <div class="card-body" style="height:100px; width:300px; border: 1px solid silver; margin-bottom: 10px; ">
                    <label>Categoría</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtCategoria" />
                </div>

                <div class="card-body" style="height:100px; width:300px; border: 1px solid silver; margin-bottom: 10px;">
                    <label>Marca</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtMarca" />
                </div>

                <div class="card-body" style="height:100px; width:300px; border: 1px solid silver; margin-bottom: 10px;">
                    <label>Talle</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtTalle" />
                </div>

                <div >
                    <asp:Button Text="Agregar" CssClass="btn btn-success" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" />
                </div>
            </div>
                
            <div style="  width: 2px; background-color: #888888; height: 450px; margin-left: 50%;"> </div>

        </div>
    </div>

</asp:Content>
