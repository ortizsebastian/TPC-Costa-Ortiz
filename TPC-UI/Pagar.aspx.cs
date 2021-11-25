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
            if (Session["Carrito"] == null)
            {
                Session.Add("Error", "Debe cargar artículos en el carrito para poder posteriormente finalizar su compra.");
                Response.Redirect("Error.aspx");
            }

            Carrito = (List<Articulo>)Session["Carrito"];
            
            foreach (var Articulo in Carrito)
            {
                Precio += Articulo.Precio;
                Contenido++;
            }
        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagar-Mensaje.aspx");
        }

        protected void btnSucursal_Click(object sender, EventArgs e)
        {
            if(!txtDomicilio.ReadOnly)
            {
                txtDomicilio.Text = "";
                txtDomicilio.ReadOnly = true;
            }
            else
            {
                txtDomicilio.ReadOnly = false;
            }
        }
    }
}