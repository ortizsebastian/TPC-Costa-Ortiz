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
    public partial class Web_Inicio : System.Web.UI.Page
    {
        public List<Producto> ListaProductos { get; set; }
        public int Id { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio Negocio = new ProductoNegocio();
            ListaProductos = Negocio.Listar();
        }
        protected void btnAlta_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Admin-Productos.aspx");
        }
        protected void btnModificar_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void btnEliminar_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}