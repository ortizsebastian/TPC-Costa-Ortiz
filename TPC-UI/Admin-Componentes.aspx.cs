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
    public partial class Admin_Componentes : System.Web.UI.Page
    {
        public List<Marca> ListaMarca { get; set; }
        public List<Categoria> ListaCategoria { get; set; }
        public List<Talle> ListaTalle { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            MarcaNegocio MarcaNegocio = new MarcaNegocio();
            TalleNegocio TalleNegocio = new TalleNegocio();
            CategoriaNegocio CategoriaNegocio = new CategoriaNegocio();

            ListaMarca = MarcaNegocio.Listar();
            ListaTalle = TalleNegocio.Listar();
            ListaCategoria = CategoriaNegocio.Listar();

            gvTalle.DataSource = TalleNegocio.Listar();
            gvTalle.DataBind();

            gvMarca.DataSource = MarcaNegocio.Listar();
            gvMarca.DataBind();

            gvCategoria.DataSource = CategoriaNegocio.Listar();
            gvCategoria.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (txtMarca.Text != "")
            {
                Marca Marca = new Marca();
                Marca.Nombre = txtMarca.Text;
                MarcaNegocio Negocio = new MarcaNegocio();
                Negocio.Agregar(Marca);
                txtMarca.Text = "";
            }

            if (txtTalle.Text != "")
            {
                Talle Talle = new Talle();
                Talle.Medida = txtTalle.Text;
                TalleNegocio Negocio = new TalleNegocio();
                Negocio.Agregar(Talle);
                txtTalle.Text = "";
            }

            if (txtCategoria.Text != "")
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