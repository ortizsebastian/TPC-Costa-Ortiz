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
            Venta.Monto = Precio;
            Venta.Cuotas = int.Parse(ddlCuotas.SelectedValue);
            Venta.Forma = ddlPago.SelectedItem.Text;

            VentaNegocio VentaNegocio = new VentaNegocio();
            DomicilioNegocio DomicilioNegocio = new DomicilioNegocio();

            if (Session["Usuario"] != null)
            {
                Venta.Usuario = new Usuario();
                Venta.Usuario = (Usuario)Session["Usuario"];

                UsuarioNegocio UsuarioNegocio = new UsuarioNegocio();
                Venta.Usuario = UsuarioNegocio.BuscarCompleto(Venta.Usuario.Id);

                //Preguntar si quiere actualizar datos.

                Venta.Usuario.Domicilio = new Domicilio();
                Venta.Usuario.Domicilio.Calle = txtCalle.Text;
                Venta.Usuario.Domicilio.Numero = txtAltura.Text;
                Venta.Usuario.Domicilio.Provincia = txtProvincia.Text;
            }
            else
            {
                Venta.Cliente = new Cliente();
                Venta.Cliente.Domicilio = new Domicilio();

                Venta.Cliente.Domicilio.Calle = txtCalle.Text;
                Venta.Cliente.Domicilio.Numero = txtAltura.Text;
                Venta.Cliente.Domicilio.Provincia = txtProvincia.Text;
                DomicilioNegocio.Agregar(Venta.Cliente.Domicilio);

                int IdDomicilio = DomicilioNegocio.Listar().Last().Id;

                Venta.Cliente.Nombre = txtNombre.Text;
                Venta.Cliente.Apellido = txtApellido.Text;
                Venta.Cliente.Telefono = txtTelefono.Text;

                ClienteNegocio ClienteNegocio = new ClienteNegocio();

                ClienteNegocio.Agregar(Venta.Cliente, IdDomicilio);

                VentaNegocio.Agregar(Venta);
            }


            CarritoNegocio CarritoNegocio = new CarritoNegocio();
            CarritoNegocio.Agregar(Carrito);



            Session.Add("Venta", Venta);
            Response.Redirect("Pagar-Mensaje.aspx");
        }

        protected void btnSucursal_Click(object sender, EventArgs e)
        {
            if (!txtCalle.ReadOnly)
            {
                cbxDomicilio.Checked = false;

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