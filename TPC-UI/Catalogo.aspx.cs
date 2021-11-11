using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPC_Dominio;
using TPC_Negocio;

namespace TPC_UI
{
    public partial class Web_Catalogo : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }

        //public int Id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio Negocio = new ArticuloNegocio();
            ListaArticulos = Negocio.Listar();
        }
        protected void btnAlta_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Admin-Articulos.aspx");
        }
        protected void btnBaja_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void btnModificar_Click(object sender, ImageClickEventArgs e)
        {
            
        }
        protected void btnAgregar_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}