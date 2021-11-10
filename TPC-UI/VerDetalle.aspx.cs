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
    public partial class VerDetalle : System.Web.UI.Page
    {
        public Articulo Articulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["Id"]);
            ArticuloNegocio Datos = new ArticuloNegocio();
            Articulo = Datos.Buscar(Id);
        }
    }
}