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
            if(Request.QueryString["IdRemoveC"] != null)
            {
                int Id = int.Parse(Request.QueryString["IdRemoveC"]);
                CategoriaNegocio Negocio = new CategoriaNegocio();
                Negocio.BajaLogica(Id);
            }
            else if(Request.QueryString["IdRemoveM"] != null)
            {
                int Id = int.Parse(Request.QueryString["IdRemoveM"]);
                MarcaNegocio Negocio = new MarcaNegocio();
                Negocio.BajaLogica(Id);
            }
            else if(Request.QueryString["IdRemoveT"] != null)
            {
                int Id = int.Parse(Request.QueryString["IdRemoveT"]);
                TalleNegocio Negocio = new TalleNegocio();
                Negocio.BajaLogica(Id);
            }
          
            MarcaNegocio MarcaNegocio = new MarcaNegocio();
            TalleNegocio TalleNegocio = new TalleNegocio();
            CategoriaNegocio CategoriaNegocio = new CategoriaNegocio();

            ListaMarca = MarcaNegocio.Listar().FindAll(x => x.Estado == true);
            ListaTalle = TalleNegocio.Listar().FindAll(x => x.Estado == true);
            ListaCategoria = CategoriaNegocio.Listar().FindAll(x => x.Estado == true);
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
            Response.Redirect("Admin-Componentes.aspx");
        }
    }
}