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
                                <input class="form-control" placeholder="Nombre">
                            </div>

                            <div class="mb-3">
                                <label>Descripción</label>
                                <input class="form-control" placeholder="Descripción">
                            </div>

                            <div class="mb-3">
                                <label>Precio</label>
                                <input class="form-control" placeholder="Precio">
                            </div>

                            <div class="mb-3">
                                <label>Stock</label>
                                <input class="form-control" placeholder="Stock">
                            </div>

                            <div class="mb-3">
                                <label>Imagén</label>
                                <input class="form-control" placeholder="Imagén">
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
                    <button type="submit" class="btn btn-dark shadow-lg">Agregar</button>
                    <a class="btn btn-dark shadow-lg">Limpiar</a>
                </div>

            </div>
        </div>
    </div>








</asp:Content>
