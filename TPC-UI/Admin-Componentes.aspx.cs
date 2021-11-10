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
    public partial class Admin_Componentes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if(txtMarca.Text != "")
            {
                Marca Marca = new Marca();
                Marca.Nombre = txtMarca.Text;
                MarcaNegocio Negocio = new MarcaNegocio();
                Negocio.Agregar(Marca);
                txtMarca.Text = "";
            }

            if(txtTalle.Text != "")
            {
                Talle Talle = new Talle();
                Talle.Medida = txtTalle.Text;
                TalleNegocio Negocio = new TalleNegocio();
                Negocio.Agregar(Talle);
                txtTalle.Text = "";
            }

            if(txtCategoria.Text != "")
            {
                Categoria Categoria = new Categoria();
                Categoria.Nombre = txtCategoria.Text;
                CategoriaNegocio Negocio = new CategoriaNegocio();
                Negocio.Agregar(Categoria);
                txtCategoria.Text = "";
            }
        }
    }
}