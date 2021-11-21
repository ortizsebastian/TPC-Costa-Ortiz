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
    public partial class Usuario_Perfil : System.Web.UI.Page
    {
        public Usuario Usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Session.Add("Error", "Dirección incorrecta.");
                Response.Redirect("Error.aspx");
            }
            Usuario = (Usuario)Session["Usuario"];

            UsuarioNegocio UsuarioNegocio = new UsuarioNegocio();
            Usuario = UsuarioNegocio.Buscar(Usuario.Id);

            txtEmail.Text = Usuario.Email;

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
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            txtNombre.ReadOnly = false;
            txtApellido.ReadOnly = false;
            txtTelefono.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtCalle.ReadOnly = false;
            txtNumero.ReadOnly = false;
            txtProvincia.ReadOnly = false;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Usuario User = new Usuario();
            User.Id = Usuario.Id;
            User.Domicilio = new Domicilio();

            bool Flag = false;

            if(txtCalle.Text != null && txtCalle.Text != "")
            {
                User.Domicilio.Calle = txtCalle.Text;
                Flag = true;
            }
            if(txtNumero.Text != null && txtNumero.Text != "")
            {
                User.Domicilio.Numero = int.Parse(txtNumero.Text);
                Flag = true;
            }
            if(txtProvincia.Text != null && txtProvincia.Text != "")
            {
                User.Domicilio.Provincia = txtProvincia.Text;
                Flag = true;
            }

            if(Flag)
            {
                DomicilioNegocio DomicilioNegocio = new DomicilioNegocio();
                DomicilioNegocio.Agregar(User.Domicilio);
                User.Domicilio = DomicilioNegocio.Buscar(User.Domicilio);
                Flag = false;
            }

            if(txtNombre.Text != null && txtNombre.Text != "")
            {
                User.Nombre = txtNombre.Text;
                Flag = true;
            }
            if(txtApellido.Text != null && txtApellido.Text != "")
            {
                User.Apellido = txtApellido.Text;
                Flag = true;
            }
            if(txtEmail.Text != null && txtEmail.Text != "")
            {
                User.Email = txtEmail.Text;
                Flag = true;
            }
            if(txtTelefono.Text != null && txtTelefono.Text != "")
            {
                User.Telefono = txtTelefono.Text;
                Flag = true;
            }
            if(Flag)
            {
                UsuarioNegocio UsuarioNegocio = new UsuarioNegocio();
                UsuarioNegocio.Modificar(User);
            }
            txtNombre.ReadOnly = true;
            txtApellido.ReadOnly = true;
            txtTelefono.ReadOnly = true;
            txtEmail.ReadOnly = true;
            txtCalle.ReadOnly = true;
            txtNumero.ReadOnly = true;
            txtProvincia.ReadOnly = true;
        }

        protected void btnHistorial_Click(object sender, EventArgs e)
        {

        }

        protected void btnPass_Click(object sender, EventArgs e)
        {
            Session.Add("Restablecer", Usuario);
            Session["Usuario"] = null;
            Response.Redirect("Usuario-Restablecer.aspx");
        }
    }
}