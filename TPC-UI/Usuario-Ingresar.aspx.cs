using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPC_Negocio;
using TPC_Dominio;

namespace TPC_Ortiz_Costa
{
    public partial class Usuario_Ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Session.Add("Error", "Dirección incorrecta.");
                Response.Redirect("Error.aspx");
            }
        }
        protected void btnConectar_Click(object sender, EventArgs e)
        {
            Usuario Usuario = new Usuario();
            UsuarioNegocio Negocio = new UsuarioNegocio();

            Usuario.Username = txtUsername.Text;
            Usuario.Password = txtPassword.Text;

            if (Negocio.Login(Usuario))
            {
                Session.Add("Usuario", Usuario);
                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                Session.Add("Error", "Usuario y/o Contraseña incorrectos.");
                Response.Redirect("Error.aspx");
            }
        }
    }
}