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
        public Producto Producto { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["Id"]);
            ProductoNegocio Datos = new ProductoNegocio();
            Producto = Datos.Buscar(Id);
        }
    }
}