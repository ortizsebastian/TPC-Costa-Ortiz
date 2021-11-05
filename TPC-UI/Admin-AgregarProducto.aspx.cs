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
                GeneroNegocio GeneroNegocio = new GeneroNegocio();
                ddlGenero.DataSource = GeneroNegocio.Listar();
                ddlGenero.DataBind();

                TalleNegocio TalleNegocio = new TalleNegocio();
                ddlTalle.DataSource = TalleNegocio.Listar();
                ddlTalle.DataBind();

                CategoriaNegocio CategoriaNegocio = new CategoriaNegocio();
                ddlCategoria.DataSource = CategoriaNegocio.Listar();
                ddlCategoria.DataBind();

                MarcaNegocio MarcaNegocio = new MarcaNegocio();
                ddlMarca.DataSource = MarcaNegocio.Listar();
                ddlMarca.DataBind();
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

            //Producto.Genero = (Genero)ddlGenero.SelectedItem;       

            ProductoNegocio Negocio = new ProductoNegocio();
            Negocio.Agregar(Producto);
        }
    }
}