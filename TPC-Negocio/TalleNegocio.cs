using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;


namespace TPC_Negocio
{
    public class TalleNegocio
    {
        public List<Talle> Listar()
        {
            List<Talle> Lista = new List<Talle>();
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("SELECT ID, MEDIDA FROM TALLES");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Talle Objeto = new Talle();
                    Objeto.Id = Convert.ToInt32(Datos.Lector["ID"]);
                    Objeto.Medida = (string)Datos.Lector["MEDIDA"];
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
        public void Agregar(Talle Talle)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("INSERT INTO TALLES (MEDIDA) values (@MEDIDA)");
                Datos.SetParametro("@MEDIDA", Talle.Medida);
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

