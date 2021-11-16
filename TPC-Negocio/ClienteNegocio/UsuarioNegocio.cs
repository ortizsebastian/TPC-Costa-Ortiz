using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio.ClienteNegocio
{
    public class UsuarioNegocio
    {
        public List<Usuario> Listar()
        {
            List<Usuario> Lista = new List<Usuario>();
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("SELECT U.ID, U.USERNAME, U.PASSWORD, U.EMAIL, T.TIPO AS TIPO FROM USUARIOS AS U JOIN USUARIOS_TIPOS AS T ON U.ID_TIPO = T.ID");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Usuario Objeto = new Usuario();

                    Objeto.Id = (int)(Datos.Lector["ID"]);
                    Objeto.Username = (string)Datos.Lector["USERNAME"];
                    Objeto.Password = (string)Datos.Lector["PASSWORD"];
                    Objeto.Email = (string)Datos.Lector["EMAIL"];
                    Objeto.Tipo = (string)Datos.Lector["TIPO"];
            
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

        //public void Agregar(Articulo Articulo)
        //{
        //    AccesoDatabase Datos = new AccesoDatabase();

        //    try
        //    {
        //        Datos.SetConsulta("INSERT INTO ARTICULOS (CODIGO, NOMBRE, DESCRIPCION, PRECIO, STOCK, IMG_URL, ID_GENERO, ID_TALLE, ID_CATEGORIA, ID_MARCA) VALUES (@CODIGO, @NOMBRE, @DESCRIPCION, @PRECIO, @STOCK, @IMG, @ID_GENERO, @ID_TALLE, @ID_CATEGORIA, @ID_MARCA)");

        //        Datos.SetParametro("@CODIGO", Articulo.Codigo);
        //        Datos.SetParametro("@NOMBRE", Articulo.Nombre);
        //        Datos.SetParametro("@DESCRIPCION", Articulo.Descripcion);
        //        Datos.SetParametro("@PRECIO", Articulo.Precio);
        //        Datos.SetParametro("@STOCK", Articulo.Stock);
        //        Datos.SetParametro("@IMG", Articulo.ImgUrl);
        //        Datos.SetParametro("@ID_GENERO", Articulo.Genero.Id);
        //        Datos.SetParametro("@ID_TALLE", Articulo.Talle.Id);
        //        Datos.SetParametro("@ID_CATEGORIA", Articulo.Categoria.Id);
        //        Datos.SetParametro("@ID_MARCA", Articulo.Marca.Id);

        //        Datos.EjecutarAccion();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        Datos.CerrarConexion();
        //    }
        //}
        //public void Eliminar(int Id)
        //{
        //    AccesoDatabase Datos = new AccesoDatabase();

        //    try
        //    {
        //        Datos.SetConsulta("DELETE FROM ARTICULOS WHERE ID = '" + Id + "'");

        //        Datos.EjecutarAccion();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        Datos.CerrarConexion();
        //    }
        //}
        //public void Modificar(Articulo Articulo)
        //{
        //    AccesoDatabase Datos = new AccesoDatabase();

        //    try
        //    {
        //        Datos.SetConsulta("UPDATE ARTICULOS SET CODIGO = '" + Articulo.Codigo + "', NOMBRE = '" + Articulo.Nombre + "', " + "DESCRIPCION = '" + Articulo.Descripcion + "', STOCK = '" + Articulo.Stock + "', PRECIO = '" + Articulo.Precio + "', ID_GENERO = '" + Articulo.Genero.Id + "', ID_CATEGORIA = '" + Articulo.Categoria.Id + "', ID_TALLE = '" + Articulo.Talle.Id + "', ID_MARCA = '" + Articulo.Marca.Id + "', IMG_URL = '" + Articulo.ImgUrl + "' " + " WHERE ID = '" + Articulo.Id + "'");

        //        Datos.EjecutarAccion();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        Datos.CerrarConexion();
        //    }
        //}
    }
}
