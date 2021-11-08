using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;


namespace TPC_Negocio
{
    public class MarcaNegocio
    {
        public List<Marca> Listar()
        {
            List<Marca> Lista = new List<Marca>();
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("SELECT ID, NOMBRE FROM MARCAS");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Marca Objeto = new Marca();
                    Objeto.Id = Convert.ToInt32(Datos.Lector["ID"]);
                    Objeto.Nombre = (string)Datos.Lector["NOMBRE"];    
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


        public void Agregar(Marca Marca)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("INSERT INTO MARCAS (NOMBRE) values (@NOMBRE)");
                Datos.SetParametro("@NOMBRE", Marca.Nombre);
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
        public int BuscarPorString(string Nombre)
        {
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("SELECT ID FROM MARCAS WHERE NOMBRE = '" + Nombre + "'");
                Datos.EjecutarLectura();
                Datos.Lector.Read();

                int Id = Convert.ToInt32(Datos.Lector["ID"]);

                return Id;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                Datos.CerrarConexion();
            }

        }
    }
}

