<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin-Usuarios.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .icons i {
            color: #b5b3b3;
            border: 1px solid #b5b3b3;
            padding: 6px;
            margin-left: 4px;
            border-radius: 5px;
            cursor: pointer
        }

        .activity-done {
            font-weight: 600
        }

        .list-group li {
            margin-bottom: 12px
        }

        .list-group-item {
        }

        .list li {
            list-style: none;
            padding: 10px;
            border: 1px solid #e3dada;
            margin-top: 12px;
            border-radius: 5px;
            background: #fff
        }

        .checkicon {
            color: green;
            font-size: 19px
        }

        .date-time {
            font-size: 12px
        }

        .profile-image img {
            margin-left: 3px
        }
    </style>

    <div class="container mt-5" style="padding-top: 3rem !important;">
        <div class="row">
            <div class="col-md-12">
                <div class="d-flex justify-content-between align-items-center activity">
                    <div><span class="activity-done">Usuarios: <%:Contador %></span></div>
                    <div class="icons"><i class="fa fa-search"></i><i class="fa fa-ellipsis-h"></i></div>
                </div>
                <div class="mt-3">
                    <ul class="list list-inline">

                        <%foreach (var Usuario in ListaUsuario)
                            { %>

                        <li class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center">
                                <i class="fa fa-check-circle checkicon mx-2"></i>
                                <div class="ml-2">
                                    <h6 class="mb-0"><%:Usuario.Username %></h6>
                                    <div class="d-flex flex-row mt-1 text-black-50 date-time">
                                        <div><i class="fa fa-calendar-o"></i><span class="ml-2"><%:Usuario.Email %></span></div>
                                        <%if (Usuario.Tipo)
                                            {
                                                Tipo = "Cliente";
                                            }
                                            else
                                            {
                                                Tipo = "Admin";
                                            }%>
                                        <div class="ml-3"><i class="fa fa-clock-o"></i><span class="ml-2 mx-2"><%:Usuario.Tipo%></span></div>
                                    </div>
                                </div>
                            </div>

                            <div class="d-flex flex-row align-items-center">
                                <div class="d-flex flex-column mr-2">
                                    <div class="profile-image">
                                        <a href="Admin-Usuarios.aspx?ID=<%:Usuario.Id %>&Tipo=<%:Convert.ToInt32(Usuario.Tipo) %>" class="btn btn-outline-danger mx-2">Cambiar Categoría</a>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <% } %>
                    </ul>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
