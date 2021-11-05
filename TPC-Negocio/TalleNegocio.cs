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

