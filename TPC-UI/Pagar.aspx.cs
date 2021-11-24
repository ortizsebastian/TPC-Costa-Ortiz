using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPC_Dominio;

namespace TPC_Ortiz_Costa
{
    public partial class Comprar : System.Web.UI.Page
    {
        public decimal Precio { get; set; }
        public int Contenido { get; set; } = 0;
        public List<Articulo> Carrito { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrito = (List<Articulo>)Session["Carrito"];
            
            foreach (var Articulo in Carrito)
            {
                Precio += Articulo.Precio;
                Contenido++;
            }
        }
    }
}