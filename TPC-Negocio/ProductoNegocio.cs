using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using TPC_Dominio;

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

                while (Datos.Lector.Read())
                {
                    Producto objeto = new Producto();

                    objeto.ID = (int)Datos.Lector["ID"];

                    objeto.Nombre = (string)Datos.Lector["NOMBRE"];
                    objeto.Descripcion = (string)Datos.Lector["DESCRIPCION"];
                    objeto.Precio = (decimal)Datos.Lector["PRECIO"];
                    objeto.Stock = (int)Datos.Lector["STOCK"];

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
    }
}
