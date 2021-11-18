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
    public partial class Usuario_Ingresar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConectar_Click(object sender, EventArgs e)
        {
            Usuario Usuario = new Usuario();
            UsuarioNegocio Negocio = new UsuarioNegocio();
            Usuario = Negocio.Listar().Find(x => x.Username == txtUsername.Text);

            if (Usuario != null)
            {
                Usuario = Negocio.Listar().Find(x => x.Password == txtPassword.Text);
                if(Usuario != null)
                {
                    int Id = Usuario.Id;
                    Response.Redirect("Catalogo.aspx?ID=" + Id);
                }
            }
        }
    }
}