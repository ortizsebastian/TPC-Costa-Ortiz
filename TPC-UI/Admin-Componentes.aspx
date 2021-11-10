<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Admin-Componentes.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_Componentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mx-5" style="padding-top: 7rem !important; padding-bottom: 4rem !important;">
        <div class="card card-body w-50 shadow-lg border-1 border-dark">
            <form>
                <div class="mb-3">
                    <label class="form-label">Marca</label>
                    <asp:textbox runat="server" class="form-control" id="txtMarca" /> 
                </div>
                <div class="mb-3">
                    <label class="form-label">Talle</label>
                    <asp:textbox runat="server" class="form-control" id="txtTalle" /> 
                </div>
                <div class="mb-3">
                    <label class="form-label">Categoría</label>
                    <asp:textbox runat="server" class="form-control" id="txtCategoria" /> 
                </div>
                <asp:button id="btnAgregar" class="btn btn-dark w-25 mx-auto shadow-lg" text="Agregar" runat="server" onclick="btnAgregar_Click"  />
            </form>
        </div>
    </div>





</asp:Content>
