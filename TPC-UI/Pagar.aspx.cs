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
        public Usuario Usuario { get; set; }
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

            if (!IsPostBack)
            {
                if (Session["Usuario"] != null)
                {
                    Usuario = (Usuario)Session["Usuario"];
                    UsuarioNegocio UsuarioNegocio = new UsuarioNegocio();
                    Usuario.Domicilio = new Domicilio();
                    Usuario = UsuarioNegocio.BuscarCompleto(Usuario.Id);

                    if (Usuario.Nombre != null && Usuario.Nombre != "")
                    {
                        txtNombre.Text = Usuario.Nombre;
                    }
                    if (Usuario.Apellido != null && Usuario.Apellido != "")
                    {
                        txtApellido.Text = Usuario.Apellido;
                    }
                    if (Usuario.Email != null && Usuario.Email != "")
                    {
                        txtEmail.Text = Usuario.Email;
                    }
                    if (Usuario.Telefono != null && Usuario.Telefono != "")
                    {
                        txtTelefono.Text = Usuario.Telefono;
                    }

                    if (Usuario.Domicilio != null)
                    {
                        if (Usuario.Domicilio.Calle != null && Usuario.Domicilio.Calle != "")
                        {
                            txtCalle.Text = Usuario.Domicilio.Calle;
                        }
                        if (Usuario.Domicilio.Numero != null && Usuario.Domicilio.Numero != "")
                        {
                            txtNumero.Text = Usuario.Domicilio.Numero;
                        }
                        if (Usuario.Domicilio.Provincia != null && Usuario.Domicilio.Provincia != "")
                        {
                            txtProvincia.Text = Usuario.Domicilio.Provincia;
                        }
                    }
                }
            }
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
                Venta.Usuario.Domicilio = new Domicilio();
                Venta.Usuario.Domicilio.Calle = txtCalle.Text;
                Venta.Usuario.Domicilio.Numero = txtNumero.Text;
                Venta.Usuario.Domicilio.Provincia = txtProvincia.Text;
                DomicilioNegocio.Agregar(Venta.Usuario.Domicilio);

                Venta.Usuario.Nombre = txtNombre.Text;
                Venta.Usuario.Apellido = txtApellido.Text;
                Venta.Usuario.Email = txtEmail.Text;
                Venta.Usuario.Telefono = txtTelefono.Text;

                Usuario = (Usuario)Session["Usuario"];
                Venta.Usuario.Username = Usuario.Username;
                Venta.Usuario.Password = Usuario.Password;

                int IdDomicilio = DomicilioNegocio.Listar().Last().Id;

                UsuarioNegocio UsuarioNegocio = new UsuarioNegocio();
                Usuario = UsuarioNegocio.BuscarCompleto(Usuario.Id);
                if (cbxUsuario.Checked)
                {
                    if (DomicilioNegocio.Existe(Usuario.Domicilio.Id))
                    {
                        DomicilioNegocio.Modificar(Venta.Usuario.Domicilio);
                    }
                    else
                    {
                        DomicilioNegocio.Agregar(Venta.Usuario.Domicilio);
                    }
                    UsuarioNegocio.Modificar(Venta.Usuario); //No llega el Venta.Usuario con los datos cargados
                }
                else
                {
                    UsuarioNegocio.Agregar(Venta.Usuario, IdDomicilio);
                }
                int IdUsuario = UsuarioNegocio.Listar().Last().Id;

                VentaNegocio.AgregarVentaUsuario(Venta, IdUsuario);
                int IdVenta = VentaNegocio.Listar().Last().Id;

                CarritoNegocio CarritoNegocio = new CarritoNegocio();
                CarritoNegocio.Agregar(Carrito, IdVenta);
            }
            else
            {
                Venta.Cliente = new Cliente();
                Venta.Cliente.Domicilio = new Domicilio();
                Venta.Cliente.Domicilio.Calle = txtCalle.Text;
                Venta.Cliente.Domicilio.Numero = txtNumero.Text;
                Venta.Cliente.Domicilio.Provincia = txtProvincia.Text;
                DomicilioNegocio.Agregar(Venta.Cliente.Domicilio);

                Venta.Cliente.Nombre = txtNombre.Text;
                Venta.Cliente.Apellido = txtApellido.Text;
                Venta.Cliente.Email = txtEmail.Text;
                Venta.Cliente.Telefono = txtTelefono.Text;
                int IdDomicilio = DomicilioNegocio.Listar().Last().Id;

                ClienteNegocio ClienteNegocio = new ClienteNegocio();
                ClienteNegocio.Agregar(Venta.Cliente, IdDomicilio);
                int IdCliente = ClienteNegocio.Listar().Last().Id;

                VentaNegocio.AgregarVentaCliente(Venta, IdCliente);
                int IdVenta = VentaNegocio.Listar().Last().Id;

                CarritoNegocio CarritoNegocio = new CarritoNegocio();
                CarritoNegocio.Agregar(Carrito, IdVenta);
            }
            Session.Add("Venta", Venta);
            Response.Redirect("Pagar-Mensaje.aspx");
        }

        protected void btnSucursal_Click(object sender, EventArgs e)
        {
            if (!txtCalle.ReadOnly)
            {
                cbxUsuario.Checked = false;

                txtCalle.Text = "";
                txtCalle.ReadOnly = true;

                txtNumero.Text = "";
                txtNumero.ReadOnly = true;

                txtProvincia.Text = "";
                txtProvincia.ReadOnly = true;
            }
            else
            {
                txtCalle.ReadOnly = false;
                txtNumero.ReadOnly = false;
                txtProvincia.ReadOnly = false;
            }
        }
    }
}