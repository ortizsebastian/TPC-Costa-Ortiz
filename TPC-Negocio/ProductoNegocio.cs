using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Dominio;
using TPC_Database;

namespace TPC_Negocio
{
    public class ProductoNegocio
    {
        public List<Producto> Listar()
        {
            List<Producto> Lista = new List<Producto>();
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("SELECT ID, NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL FROM PRODUCTOS");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Producto objeto = new Producto();
                    objeto.Id = Convert.ToInt32(Datos.Lector["ID"]);
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

        public Producto Buscar(int IdProducto)
        {
            AccesoDatabase Datos = new AccesoDatabase();
            Datos.SetConsulta("SELECT P.ID, P.NOMBRE, P.DESCRIPCION, P.PRECIO, P.STOCK, P.IMG_URL, P.ESTADO, G.NOMBRE AS GENERO, T.MEDIDA AS TALLE, C.NOMBRE AS CATEGORIA, M.NOMBRE AS MARCA, P.ID_GENERO, P.ID_MARCA, P.ID_TALLE, P.ID_CATEGORIA FROM PRODUCTOS AS P JOIN GENEROS AS G ON P.ID_GENERO = G.ID JOIN TALLES AS T ON P.ID_TALLE = T.ID JOIN CATEGORIAS AS C ON P.ID_CATEGORIA = C.ID JOIN MARCAS AS M ON P.ID_MARCA = M.ID WHERE P.ID = '" + IdProducto + "'");
            Datos.EjecutarLectura();

            Datos.Lector.Read();
            Producto objeto = new Producto();

            objeto.Id = Convert.ToInt32(Datos.Lector["ID"]);
            objeto.Nombre = (string)Datos.Lector["NOMBRE"];
            objeto.Descripcion = (string)Datos.Lector["DESCRIPCION"];
            objeto.Precio = (decimal)Datos.Lector["PRECIO"];
            objeto.Stock = Convert.ToInt32(Datos.Lector["STOCK"]);

            if (!(Datos.Lector["IMG_URL"] is DBNull))
                objeto.ImgUrl = (string)Datos.Lector["IMG_URL"];

            objeto.Nombre = (string)Datos.Lector["NOMBRE"];
            objeto.Descripcion = (string)Datos.Lector["DESCRIPCION"];
            objeto.Precio = (decimal)Datos.Lector["PRECIO"];
            objeto.Stock = Convert.ToInt32(Datos.Lector["STOCK"]);

            objeto.Genero = new Genero();
            objeto.Genero.Id = (int)Datos.Lector["ID_GENERO"];
            objeto.Genero.Nombre = (string)Datos.Lector["GENERO"];

            objeto.Talle = new Talle();
            objeto.Talle.Id = (int)Datos.Lector["ID_TALLE"];
            objeto.Talle.Nombre = (string)Datos.Lector["TALLE"];

            objeto.Categoria = new Categoria();
            objeto.Categoria.Id = (int)Datos.Lector["ID_CATEGORIA"];
            objeto.Categoria.Nombre = (string)Datos.Lector["CATEGORIA"];

            objeto.Marca = new Marca();
            objeto.Marca.Id = (int)Datos.Lector["ID_MARCA"];
            objeto.Marca.Nombre = (string)Datos.Lector["MARCA"];

            objeto.Estado = (bool)Datos.Lector["ESTADO"];
            return objeto;
        }
    }
}



