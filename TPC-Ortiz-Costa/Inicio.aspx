<%@ Page Title="" Language="C#" MasterPageFile="~/_Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TPC_Ortiz_Costa.Web_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="input-group rounded" style="padding-top: 2rem; padding-left: 7rem; padding-right: 7rem;">
      <input type="search" class="form-control rounded w-75 mx-0" placeholder=" Buscar Artículo" aria-label="Search" aria-describedby="search-addon" />
      <button id="search-button" type="button" class="btn btn-dark">
        <i class="fas fa-search"></i>
      </button>
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4 mx-5 my-5">
      <div class="col">
        <div class="card h-100">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Product 1</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
          </div>
          <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card h-100">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Product 2</h5>
            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
          </div>
          <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card h-100">
          <img src="..." class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Product 3</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
          </div>
          <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
          </div>
        </div>
      </div>
    </div>

</asp:Content>
