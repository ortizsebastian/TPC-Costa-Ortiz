using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Dominio;
using TPC_Conexion;

namespace TPC_Negocio
{
    public class ProductoNegocio
    {
        public List<Producto> Listar()
        {
            List<Producto> Lista = new List<Producto>();
            AccesoDatos Datos = new AccesoDatos();

            try
            {
                Datos.SetConsulta("SELECT ID, NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL FROM PRODUCTOS");
                Datos.EjecutarLectura();

                //Diferencias al parsear con 'Convert' y con '(int)' ??

                while (Datos.Lector.Read())
                {
                    Producto objeto = new Producto();
                    objeto.ID = Convert.ToInt32(Datos.Lector["ID"]);
                    objeto.Nombre = (string)Datos.Lector["NOMBRE"];
                    objeto.Descripcion = (string)Datos.Lector["DESCRIPCION"];
                    objeto.Precio = (decimal)Datos.Lector["PRECIO"];
                    objeto.Stock = Convert.ToInt32(Datos.Lector["STOCK"]);

                    if (!(Datos.Lector["IMG_URL"] is DBNull))
                        objeto.ImgUrl = (string)Datos.Lector["IMG_URL"];

                    Lista.Add(objeto);
                }

                return Lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Datos.CerrarConexion();
            }
        }

        public Producto Buscar(int IDProducto)
        {
            AccesoDatos Datos = new AccesoDatos();
            Datos.SetConsulta("SELECT ID, NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL FROM PRODUCTOS WHERE ID = '" + IDProducto + "'");
            Datos.EjecutarLectura();

            Datos.Lector.Read();
            Producto objeto = new Producto();
            objeto.ID = Convert.ToInt32(Datos.Lector["ID"]);
            objeto.Nombre = (string)Datos.Lector["NOMBRE"];
            objeto.Descripcion = (string)Datos.Lector["DESCRIPCION"];
            objeto.Precio = (decimal)Datos.Lector["PRECIO"];
            objeto.Stock = Convert.ToInt32(Datos.Lector["STOCK"]);

            if (!(Datos.Lector["IMG_URL"] is DBNull))
                objeto.ImgUrl = (string)Datos.Lector["IMG_URL"];

            return objeto;
        }
    }
}
