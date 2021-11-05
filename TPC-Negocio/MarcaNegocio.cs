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
    }
}

