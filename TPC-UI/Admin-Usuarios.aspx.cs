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
    public partial class Admin_Usuarios : System.Web.UI.Page
    {
        public List<Usuario> ListaUsuario { get; set; }
        public string Tipo { get; set; }
        public int Contador { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioNegocio Negocio = new UsuarioNegocio();
            ListaUsuario = Negocio.Listar();
            Contador = ListaUsuario.Count();
            
            if(Request.QueryString["ID"] != null)
            {
                int Id = int.Parse(Request.QueryString["ID"]);

                UsuarioNegocio Usuario = new UsuarioNegocio();
                int Tipo = int.Parse(Request.QueryString["Tipo"]);
                
                if(Tipo == 1) //No modifica el tipo y los toma erroneamente en el front..
                {
                    Usuario.ModificarTipo(Id, 0);
                }
                else
                {
                    Usuario.ModificarTipo(Id, 1);
                }
                Response.Redirect("Admin-Usuarios.aspx");
            }
        }
    }
}