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
    public partial class Admin_Articulos : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio Negocio = new ArticuloNegocio();
            ListaArticulos = Negocio.Listar();

            if (!IsPostBack)
            {

                MarcaNegocio MarcaNegocio = new MarcaNegocio();
                ddlMarca.DataSource = MarcaNegocio.Listar();
                ddlMarca.DataTextField = "Nombre";
                ddlMarca.DataValueField = "Id";
                ddlMarca.DataBind();

                GeneroNegocio GeneroNegocio = new GeneroNegocio();
                ddlGenero.DataSource = GeneroNegocio.Listar();
                ddlGenero.DataTextField = "Nombre";
                ddlGenero.DataValueField = "Id";
                ddlGenero.DataBind();

                TalleNegocio TalleNegocio = new TalleNegocio();
                ddlTalle.DataSource = TalleNegocio.Listar();
                ddlTalle.DataTextField = "Medida";
                ddlTalle.DataValueField = "Id";
                ddlTalle.DataBind();

                CategoriaNegocio CategoriaNegocio = new CategoriaNegocio();
                ddlCategoria.DataSource = CategoriaNegocio.Listar();
                ddlCategoria.DataTextField = "Nombre";
                ddlCategoria.DataValueField = "Id";
                ddlCategoria.DataBind();
            }
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Articulo Articulo = new Articulo();
            Articulo.Nombre = txtNombre.Text;
            Articulo.Descripcion = txtDescripcion.Text;
            Articulo.Precio = decimal.Parse(txtPrecio.Text);
            Articulo.Stock = Convert.ToInt32(txtStock.Text);
            Articulo.ImgUrl = txtImg.Text;

            Articulo.Genero = new Genero();
            Articulo.Genero.Id = int.Parse(ddlGenero.SelectedValue);

            Articulo.Marca = new Marca();
            Articulo.Marca.Id = int.Parse(ddlMarca.SelectedValue);

            Articulo.Categoria = new Categoria();
            Articulo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);

            Articulo.Talle = new Talle();
            Articulo.Talle.Id = int.Parse(ddlTalle.SelectedValue);

            ArticuloNegocio Negocio = new ArticuloNegocio();
            Negocio.Agregar(Articulo);
        }
    }
}