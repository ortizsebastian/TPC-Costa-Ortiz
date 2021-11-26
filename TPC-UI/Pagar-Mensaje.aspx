<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagar-Mensaje.aspx.cs" Inherits="TPC_Ortiz_Costa.Pagar_Finalizado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="padding-top: 8rem !important; padding-bottom: 7rem !important;">
        <div class="card w-50 mx-auto shadow-sm" style="border-radius: 15px;">
            <div class="card-body">
                <div class="jumbotron text-center">
                    <h1 class="display-3">Gracias por elegirnos!</h1>
                    <p class="lead"><strong>Por favor manténgase al tanto en su email</strong> le enviaremos el seguimiento de su compra.</p>
                    <hr class="text-black-50 w-75 mx-auto">
                    <p>
                        Algún inconveniente? <a href="Contactar.aspx">Contactenos</a>
                    </p>
                    <p class="lead">
                        <a class="btn btn-light button-green" href="Catalogo.aspx" role="button">Volver a la Homepage</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
