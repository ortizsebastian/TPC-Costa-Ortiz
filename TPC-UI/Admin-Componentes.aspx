<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Admin-Componentes.aspx.cs" Inherits="TPC_UI.Admin_Componentes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<style>
    .table-responsive {
        margin: 30px 0;
    }
	.table-wrapper {
		min-width: 1000px;
        background: #fff;
        padding: 20px;        
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
    }
    .table-title h2 {
        margin: 8px 0 0;
        font-size: 22px;
    }
    .search-box {
        position: relative;        
        float: right;
    }
    .search-box input {
        height: 34px;
        border-radius: 20px;
        padding-left: 35px;
        border-color: #ddd;
        box-shadow: none;
    }
	.search-box input:focus {
		border-color: #3FBAE4;
	}
    .search-box i {
        color: #a0a5b1;
        position: absolute;
        font-size: 19px;
        top: 8px;
        left: 10px;
    }
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table td:last-child {
        width: 130px;
    }
    table.table td a {
        color: #a0a5b1;
        display: inline-block;
        margin: 0 5px;
    }
	table.table td a.view {
        color: #03A9F4;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td i {
        font-size: 19px;
    }    
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 95%;
        width: 30px;
        height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 30px !important;
        text-align: center;
        padding: 0;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 6px;
        font-size: 95%;
    } 
</style>

<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

        <div class="mx-4" style="padding-bottom: 4rem !important; padding-top: 7rem !important;">
        <div class="card w-75 shadow-lg border-1 border-dark">
            <div clss="card-body">
                <div class="container">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <h2>Componentes<b> de Artículos</b></h2>
                                    </div>
                                    <div class="col-sm-4">                                       
                                        <div class="search-box">
                                            <input type="text" class="form-control" placeholder="Search…">
                                            <a href="#addEmployeeModal" class="btn btn-success my-4 form-control" data-toggle="modal"><i class="material-icons"></i><span>Agregar Componente</span></a>                                                                                                               
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover table-bordered">
                                <thead>                        
                                    <tr>
                                        <th>Marca</th>
                                        <th>Categoría</th>
                                        <th>Talle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%foreach (var item in ListaMarca)
                                        { %>
                                        <tr>
                                            <td><%:item.Nombre %></td>
                                            <td><%:ListaCategoria[1].Nombre %></td>
                                            <td><%:ListaTalle[1].Medida %></td>
                                            <td>
                                                <a href="#" class="edit" title="" data-toggle="tooltip" data-original-title="Modificar"><i class="material-icons"></i></a>
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

    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content border-1 border-dark shadow-lg">
                <form>
                    <div class="modal-header border-0">
                        <h4 class="modal-title">Agregar <b>Componentes</b></h4>
                        <button type="button" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">X</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group my-3">
                            <label>Categoría</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group my-3">
                            <label>Talle</label>
                            <input type="email" class="form-control" required>
                        </div>
                        <div class="form-group my-3">
                            <label>Marca</label>
                            <input type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer border-0">
                        <input type="button" class="btn btn-dark" data-dismiss="modal" value="Cancelar">
                        <input type="submit" class="btn btn-success" value="Agregar">
                    </div>
                </form>
            </div>
        </div>
    </div>


</asp:Content>
