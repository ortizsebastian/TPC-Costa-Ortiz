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
 
        public Usuario Buscar(int Id)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("SELECT ID, USERNAME, PASSWORD, EMAIL FROM USUARIOS WHERE ID =" + Id);
                Datos.EjecutarLectura();
                Usuario Objeto = new Usuario();

                if(Datos.Lector.Read())
                {
                    Objeto.Id = (int)(Datos.Lector["ID"]);
                    Objeto.Username = (string)Datos.Lector["USERNAME"];
                    Objeto.Password = (string)Datos.Lector["PASSWORD"];
                    Objeto.Email = (string)Datos.Lector["EMAIL"];
                }
                                  
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
        public bool Login(Usuario Usuario)
        {
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("SELECT ID, TIPO FROM USUARIOS WHERE USERNAME = @USERNAME AND PASSWORD = @PASSWORD");       
                Datos.SetParametro("@USERNAME", Usuario.Username);
                Datos.SetParametro("@PASSWORD", Usuario.Password);
                Datos.EjecutarLectura();

                if (Datos.Lector.Read())
                {
                    Usuario.Id = (int)(Datos.Lector["ID"]);
                    Usuario.Tipo = (bool)Datos.Lector["TIPO"];
                    return true;
                }
                return false;
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

        public void Modificar(Usuario Usuario) //Solo modifica Password, generalizarla para poder modificar todas las propiedades.
        {
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("UPDATE USUARIOS SET PASSWORD = '" + Usuario.Password + " WHERE ID = '" + Usuario.Id + "'");
                
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
