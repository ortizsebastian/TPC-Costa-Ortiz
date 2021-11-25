<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin-Componentes.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_Componentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        .registration-form {
            padding: 80px 0 0 0;
        }

            .registration-form form {
                max-width: 600px;
                margin: auto;
                padding: 50px 70px;
                border-top-left-radius: 30px;
                border-top-right-radius: 30px;
            }

            .registration-form .form-icon {
                text-align: center;
                border-radius: 50%;
                font-size: 40px;
                color: white;
                width: 100px;
                height: 100px;
                margin: auto;
                margin-bottom: 50px;
                line-height: 100px;
            }

            .registration-form .item {
                border-radius: 20px;
                margin-bottom: 25px;
                padding: 10px 20px;
            }

            .registration-form .create-account {
                border-radius: 30px;
                padding: 10px 20px;
                font-size: 18px;
                font-weight: bold;
                border: none;
                color: darkblue;
                margin-top: 20px;
            }

            .registration-form .social-media {
                max-width: 600px;
                margin: auto;
                padding: 35px 0;
                text-align: center;
            }

            .registration-form .social-icons {
                margin-top: 30px;
                margin-bottom: 16px;
            }

                .registration-form .social-icons a {
                    font-size: 23px;
                    margin: 0 3px;
                    border: 1px solid;
                    border-radius: 50%;
                    width: 45px;
                    display: inline-block;
                    height: 45px;
                    text-align: center;
                    line-height: 45px;
                }

                    .registration-form .social-icons a:hover {
                        text-decoration: none;
                        opacity: 0.6;
                    }

        .button {
            transition: all .5s ease !important;
            border-radius: 15px !important;           
        }

            .button-red:hover {
                color: white !important;
                background-color: rgb(179, 0, 0) !important;
            }
            .button-green:hover {
                color: white !important;
                background-color: rgb(0,121,0) !important;
            }

        @media (max-width: 576px) {
            .registration-form form {
                padding: 50px 20px;
            }

            .registration-form .form-icon {
                width: 70px;
                height: 70px;
                font-size: 30px;
                line-height: 70px;
            }
        }
    </style>


    <div style="padding-top: 5rem !important; padding-bottom: 7rem !important;">
        <div class="card-body w-50 mx-auto shadow-sm">

                <!-- Agregar -->

                <div style="display: flex; flex-direction: column; float: left; margin: 15px; ">

                <div class="card-body" style="height:100px; width:300px;">
                    <asp:TextBox runat="server" placeholder="Categoría" CssClass="form-control" ID="txtCategoria" />
                </div>
                <div class="card-body" style="height:100px; width:300px; margin-top: -20px">
                    <asp:TextBox runat="server" placeholder="Marca" CssClass="form-control" ID="txtMarca" />
                </div>
                <div class="card-body" style="height:100px; width:300px; margin-top: -20px">
                    <asp:TextBox runat="server" placeholder="Talle" CssClass="form-control" ID="txtTalle" />
                </div>
                <div class="form-group m-2">
                    <center>
                        <asp:Button Text="Agregar" CssClass="btn btn-block account mx-auto btn-light button button-green shadow-sm" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" />
                    </center>
                </div>
                </div>

                <!-- Eliminar -->

                <div style="display: flex; flex-direction: column; float: right; margin: 15px;">

                <div class="card-body" style="height:100px; width:300px;">
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select" ID="ddlCategoria">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
                <div class="card-body" style="height:100px; width:300px; margin-top: -20px">
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select" ID="ddlMarca">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
                <div class="card-body" style="height:100px; width:300px; margin-top: -20px">
                    <asp:DropDownList AppendDataBoundItems="true" runat="server" CssClass="form-select" ID="ddlTalle">
                        <Items>
                            <asp:ListItem Text="Seleccionar" Value="-1" />
                        </Items>
                    </asp:DropDownList>
                </div>
                <div class="form-group m-2">
                    <center>
                        <asp:Button Text="Eliminar" runat="server" CssClass="btn btn-block account mx-auto mb-3 btn-light button button-red shadow-sm" ID="btnEliminar" OnClick="btnEliminar_Click" />
                    </center>
                </div>
               </div>

            <div style="  width: 2px; background-color: #E9EAEB; height: 400px; margin-left: 50%;"> </div>

        </div>
    </div>

</asp:Content>
