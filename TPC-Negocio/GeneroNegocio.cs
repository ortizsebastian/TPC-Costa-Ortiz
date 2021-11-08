using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio
{
    public class GeneroNegocio
    {
        public List<Genero> Listar()
        {
            List<Genero> Lista = new List<Genero>();
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("SELECT ID, NOMBRE FROM GENEROS");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Genero Objeto = new Genero();
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
        public int BuscarPorString(string Nombre)
        {
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("SELECT ID FROM GENEROS WHERE NOMBRE = '" + "U" + "'");
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
