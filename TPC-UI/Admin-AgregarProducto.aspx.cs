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

        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Producto Producto = new Producto();

            Producto.Nombre = txtNombre.ToString();
            Producto.Descripcion = txtDescripcion.ToString();
            Producto.Precio = Convert.ToInt32(txtPrecio);
            Producto.Stock = Convert.ToInt32(txtStock);
            Producto.ImgUrl = txtImg.ToString();

            Producto.Categoria.Nombre = "ASD";
            Producto.Genero.Nombre = "ASD";
            Producto.Marca.Nombre = "ASD";
            Producto.Talle.Medida = "ASD";

            ProductoNegocio Negocio = new ProductoNegocio();

            Negocio.Agregar(Producto);
        }
    }
}