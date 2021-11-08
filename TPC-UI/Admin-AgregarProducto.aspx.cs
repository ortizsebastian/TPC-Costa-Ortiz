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
    public partial class Admin_AgregarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            Producto Producto = new Producto();
            Producto.Nombre = txtNombre.Text;
            Producto.Descripcion = txtDescripcion.Text;
            Producto.Precio = decimal.Parse(txtPrecio.Text);
            Producto.Stock = Convert.ToInt32(txtStock.Text);
            Producto.ImgUrl = txtImg.Text;

            Producto.Genero = new Genero();
            Producto.Genero.Id = int.Parse(ddlGenero.SelectedValue);
            //Producto.Genero.Nombre = ;

            Producto.Marca = new Marca();
            Producto.Marca.Id = int.Parse(ddlMarca.SelectedValue);
            //Producto.Marca.Nombre = ;

            Producto.Categoria = new Categoria();
            Producto.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);
            //Producto.Categoria.Nombre = ;

            Producto.Talle = new Talle();
            Producto.Talle.Id = int.Parse(ddlTalle.SelectedValue);
            //Producto.Talle.Medida = ;

            ProductoNegocio Negocio = new ProductoNegocio();
            Negocio.Agregar(Producto);
        }
    }
}