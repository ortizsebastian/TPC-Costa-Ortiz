using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPC_Dominio;
using TPC_Negocio;

namespace TPC_Ortiz_Costa
{
    public partial class Catalogo : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }

        public Usuario Usuario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["Logout"] != null)
            {
                Session["Usuario"] = null;
                Response.Redirect("Catalogo.aspx");
            }

            if (Session["Usuario"] != null)
            {
                Usuario = (Usuario)Session["Usuario"];
            }

            if (Request.QueryString["Delete"] != null)
            {
                int Id = int.Parse(Request.QueryString["Delete"]);
                ArticuloNegocio Objeto = new ArticuloNegocio();
                Objeto.Eliminar(Id);
            }
            ArticuloNegocio ArticuloNegocio = new ArticuloNegocio();
            ListaArticulos = ArticuloNegocio.Listar();

        }

        protected void btnAlta_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Admin-Articulos.aspx");
        }
    }
}