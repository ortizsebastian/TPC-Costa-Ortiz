<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="TPC_Ortiz_Costa.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-top: 5rem; padding-left: 5rem;">
        <div class="card card-body mx-5 my-5 w-50 shadow-lg border-1 border-dark">
            <h4>Error.</h4>
            <p><%:Mensaje %></p>
        </div>
    </div>

</asp:Content>
