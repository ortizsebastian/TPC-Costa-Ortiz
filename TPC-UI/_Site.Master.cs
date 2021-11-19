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
    public partial class _Site : System.Web.UI.MasterPage
    {
        public int Cantidad { get; set; } = 0;
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Articulo> Lista = new List<Articulo>();
            Lista = (List<Articulo>)Session["Cantidad"];

            if(Lista != null)
            {
                Cantidad = Lista.Count();
            }
            if(Session["User"] != null)
            {
                Usuario = (Usuario)Session["User"];
            }
        }
    }
}