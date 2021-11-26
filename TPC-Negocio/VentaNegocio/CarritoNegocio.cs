using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio
{
    public class CarritoNegocio
    {
        public void Agregar(int IdArticulo, int IdVenta)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                
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
