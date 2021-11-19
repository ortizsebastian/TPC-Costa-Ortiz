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
    public partial class Usuario_Restablecer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            UsuarioNegocio Negocio = new UsuarioNegocio();
            Usuario Usuario = new Usuario();

            Usuario = Negocio.Listar().Find(x => x.Username == txtUsername.Text);
            if(Usuario != null)
            {
                if(Usuario.Email == txtEmail.Text)
                {
                    Response.Redirect("Usuario-Restablecer.aspx");
                }
            }
        }
    }
}