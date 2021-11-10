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
                Datos.SetConsulta("SELECT P.CODIGO, P.ID, P.NOMBRE, P.DESCRIPCION, P.PRECIO, P.STOCK, P.IMG_URL, P.ESTADO, G.NOMBRE AS GENERO, T.MEDIDA AS TALLE, C.NOMBRE AS CATEGORIA, M.NOMBRE AS MARCA, P.ID_GENERO, P.ID_MARCA, P.ID_TALLE, P.ID_CATEGORIA FROM PRODUCTOS AS P JOIN GENEROS AS G ON P.ID_GENERO = G.ID JOIN TALLES AS T ON P.ID_TALLE = T.ID JOIN CATEGORIAS AS C ON P.ID_CATEGORIA = C.ID JOIN MARCAS AS M ON P.ID_MARCA = M.ID");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Producto Objeto = new Producto();

                    Objeto.Codigo = (string)Datos.Lector["CODIGO"];
                    Objeto.Id = (int)(Datos.Lector["ID"]);
                    Objeto.Nombre = (string)Datos.Lector["NOMBRE"];
                    Objeto.Descripcion = (string)Datos.Lector["DESCRIPCION"];
                    Objeto.Precio = (decimal)Datos.Lector["PRECIO"];
                    Objeto.Stock = (int)(Datos.Lector["STOCK"]);

                    if (!(Datos.Lector["IMG_URL"] is DBNull))
                        Objeto.ImgUrl = (string)Datos.Lector["IMG_URL"];

                    Genero Genero = new Genero();
                    Objeto.Genero = Genero;
                    Objeto.Genero.Id = (int)(Datos.Lector["ID_GENERO"]);
                    Objeto.Genero.Nombre = (string)Datos.Lector["GENERO"];

                    Marca Marca = new Marca();
                    Objeto.Marca = Marca;
                    Objeto.Marca.Id = (int)(Datos.Lector["ID_MARCA"]);
                    Objeto.Marca.Nombre = (string)Datos.Lector["MARCA"];

                    Categoria Categoria = new Categoria();
                    Objeto.Categoria = Categoria;
                    Objeto.Categoria.Id = (int)(Datos.Lector["ID_CATEGORIA"]);
                    Objeto.Categoria.Nombre = (string)Datos.Lector["CATEGORIA"];

                    Talle Talle = new Talle();
                    Objeto.Talle = Talle;
                    Objeto.Talle.Id = (int)(Datos.Lector["ID_TALLE"]);
                    Objeto.Talle.Medida = (string)Datos.Lector["TALLE"];

                    Lista.Add(Objeto);
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

            try
            {
                Datos.SetConsulta("SELECT P.CODIGO, P.ID, P.NOMBRE, P.DESCRIPCION, P.PRECIO, P.STOCK, P.IMG_URL, P.ESTADO, G.NOMBRE AS GENERO, T.MEDIDA AS TALLE, C.NOMBRE AS CATEGORIA, M.NOMBRE AS MARCA, P.ID_GENERO, P.ID_MARCA, P.ID_TALLE, P.ID_CATEGORIA FROM PRODUCTOS AS P JOIN GENEROS AS G ON P.ID_GENERO = G.ID JOIN TALLES AS T ON P.ID_TALLE = T.ID JOIN CATEGORIAS AS C ON P.ID_CATEGORIA = C.ID JOIN MARCAS AS M ON P.ID_MARCA = M.ID WHERE P.ID = '" + IdProducto + "'");
                Datos.EjecutarLectura();

                Datos.Lector.Read();
                Producto Objeto = new Producto();

                Objeto.Codigo = (string)Datos.Lector["CODIGO"];
                Objeto.Id = (int)(Datos.Lector["ID"]);
                Objeto.Nombre = (string)Datos.Lector["NOMBRE"];
                Objeto.Descripcion = (string)Datos.Lector["DESCRIPCION"];
                Objeto.Precio = (decimal)Datos.Lector["PRECIO"];
                Objeto.Stock = (int)(Datos.Lector["STOCK"]);

                if (!(Datos.Lector["IMG_URL"] is DBNull))
                    Objeto.ImgUrl = (string)Datos.Lector["IMG_URL"];

                Objeto.Genero = new Genero();
                Objeto.Genero.Id = (int)Datos.Lector["ID_GENERO"];
                Objeto.Genero.Nombre = (string)Datos.Lector["GENERO"];

                Objeto.Talle = new Talle();
                Objeto.Talle.Id = (int)Datos.Lector["ID_TALLE"];
                Objeto.Talle.Medida = (string)Datos.Lector["TALLE"];

                Objeto.Categoria = new Categoria();
                Objeto.Categoria.Id = (int)Datos.Lector["ID_CATEGORIA"];
                Objeto.Categoria.Nombre = (string)Datos.Lector["CATEGORIA"];

                Objeto.Marca = new Marca();
                Objeto.Marca.Id = (int)Datos.Lector["ID_MARCA"];
                Objeto.Marca.Nombre = (string)Datos.Lector["MARCA"];

                Objeto.Estado = (bool)Datos.Lector["ESTADO"];
                return Objeto;
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

        public void Agregar(Producto Producto)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("INSERT INTO PRODUCTOS (CODIGO, NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL, ID_GENERO, ID_TALLE, ID_CATEGORIA, ID_MARCA) values (@CODIGO, @NOMBRE, @DESCRIPCION, @PRECIO, @STOCK, @IMG, @ID_GENERO, @ID_TALLE, @ID_CATEGORIA, @ID_MARCA)");

                Datos.SetParametro("@CODIGO", Producto.Codigo);
                Datos.SetParametro("@NOMBRE", Producto.Nombre);
                Datos.SetParametro("@DESCRIPCION", Producto.Descripcion);
                Datos.SetParametro("@PRECIO", Producto.Precio);
                Datos.SetParametro("@STOCK", Producto.Stock);
                Datos.SetParametro("@IMG", Producto.ImgUrl);
                Datos.SetParametro("@ID_GENERO", Producto.Genero.Id);
                Datos.SetParametro("@ID_TALLE", Producto.Talle.Id);
                Datos.SetParametro("@ID_CATEGORIA", Producto.Categoria.Id);
                Datos.SetParametro("@ID_MARCA", Producto.Marca.Id);

                Datos.EjecutarAccion();
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



