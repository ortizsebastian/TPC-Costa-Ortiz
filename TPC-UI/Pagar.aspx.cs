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
    public partial class Comprar : System.Web.UI.Page
    {
        public decimal Precio { get; set; }
        public int Contenido { get; set; } = 0;
        public List<Articulo> Carrito { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Carrito"] == null)
            //{
            //    Session.Add("Error", "Debe cargar artículos en el carrito para poder posteriormente finalizar su compra.");
            //    Response.Redirect("Error.aspx");
            //}

            //Carrito = (List<Articulo>)Session["Carrito"];
            
            //foreach (var Articulo in Carrito)
            //{
            //    Precio += Articulo.Precio;
            //    Contenido++;
            //}
        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            Venta Venta = new Venta();
            Venta.Carrito = Carrito;
            Venta.Precio = Precio;

            if (cbxCredito.Checked)
                Venta.Pago = "Crédito";
            else if (cbxDebito.Checked)
                Venta.Pago = "Débito";
            else
                Venta.Pago = "Efectivo";

            Venta.Domicilio = new Domicilio();
            Venta.Domicilio.Calle = txtCalle.Text;
            Venta.Domicilio.Numero = txtAltura.Text;
            Venta.Domicilio.Provincia = txtProvincia.Text;

            Venta.Usuario = new Usuario();
            Venta.Usuario.Nombre = txtNombre.Text;
            Venta.Usuario.Apellido = txtApellido.Text;

            VentaNegocio VentaNegocio = new VentaNegocio();
            //VentaNegocio.Agregar(Venta);

            Session.Add("Venta", Venta);
            Response.Redirect("Pagar-Mensaje.aspx");
        }

        protected void btnSucursal_Click(object sender, EventArgs e)
        {
            if(!txtCalle.ReadOnly)
            {
                txtCalle.Text = "";
                txtCalle.ReadOnly = true;
                
                txtAltura.Text = "";
                txtAltura.ReadOnly = true;

                txtProvincia.Text = "";
                txtProvincia.ReadOnly = true;
            }
            else
            {
                txtCalle.ReadOnly = false;
                txtAltura.ReadOnly = false;
                txtProvincia.ReadOnly = false;
            }
        }
    }
}