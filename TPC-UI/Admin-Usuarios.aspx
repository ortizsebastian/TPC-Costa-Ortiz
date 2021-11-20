<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin-Usuarios.aspx.cs" Inherits="TPC_Ortiz_Costa.Admin_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mx-4" style="padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div style="border: 1px solid black; border-radius: 5px">
            <div class="card-body">
                <div class="container">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <h2>Lista<b> de Usuarios</b></h2>
                                    </div>
                                    <div class="col-sm-4">                                       
                                        <div class="search-box">
                                            <input type="text" class="form-control" placeholder="Search…">                                                                                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover table-bordered">
                                <thead>                        
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Tipo</th>
                                        <th>Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%for (int i = 0; i < 5; i++)
                                        { %>
                                        <tr>
                                            <td>...</td>
                                            <td>...</td>
                                            <td>...</td>
                                            <td>                                            
                                                <a href="#" class="delete" title="" data-toggle="tooltip" data-original-title="Borrar"><i class="material-icons"></i></a>
                                            </td>
                                        </tr>
                                    <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
