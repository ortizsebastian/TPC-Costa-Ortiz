<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Admin-AgregarProducto-Componentes.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_AgregarProducto_Componentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-left: 7rem !important; padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card w-50 shadow-lg border-1 border-dark">
            <div class="card-body">
                <div class="container mt-4 d-flex justify-content-between">

                    <div class="col mx-4 my-auto">
                        <form>

                            <div class="mb-3">
                                <label>Talle</label>
                                <input class="form-control" placeholder="Talle">
                            </div>

                            <div class="mb-3">
                                <label>Categoría</label>
                                <input class="form-control" placeholder="Categoría">
                            </div>

                            <div class="mb-3">
                                <label>Marca</label>
                                <input class="form-control" placeholder="Marca">
                            </div>

                        </form>
                    </div>
                </div>

                <div class="mb-3 mx-4">
                    <hr>
                    <button type="submit" class="btn btn-dark shadow-lg">Agregar</button>
                    <a class="btn btn-dark shadow-lg">Limpiar</a>
                </div>

            </div>
        </div>
    </div>


</asp:Content>
