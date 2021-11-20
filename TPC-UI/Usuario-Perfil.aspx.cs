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

        }
    }
}