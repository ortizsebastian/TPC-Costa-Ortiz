using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio
{
    public class UsuarioNegocio
    {
        public List<Usuario> Listar()
        {
            List<Usuario> Lista = new List<Usuario>();
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("SELECT ID, USERNAME, PASSWORD, EMAIL FROM USUARIOS");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Usuario Objeto = new Usuario();

                    Objeto.Id = (int)(Datos.Lector["ID"]);
                    Objeto.Username = (string)Datos.Lector["USERNAME"];
                    Objeto.Password = (string)Datos.Lector["PASSWORD"];
                    Objeto.Email = (string)Datos.Lector["EMAIL"];
            
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

        public void Agregar(Usuario Usuario)
        {
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("INSERT INTO USUARIOS (USERNAME, PASSWORD, EMAIL) VALUES (@USERNAME, @PASSWORD, @EMAIL)");

                Datos.SetParametro("@USERNAME", Usuario.Username);
                Datos.SetParametro("@PASSWORD", Usuario.Password);
                Datos.SetParametro("@EMAIL", Usuario.Email);

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
