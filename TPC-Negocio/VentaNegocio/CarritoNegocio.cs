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
        public void Agregar(List<Articulo> Carrito)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                foreach (var Articulo in Carrito)
                {
                    Datos.SetConsulta("INSERT INTO CARRITOS (ID_VENTA, ID_ARTICULO) VALUES (@ID_VENTA, @ID_ARTICULO)");

                    Datos.SetParametro("@ID_VENTA",);
                    Datos.SetParametro("@ID_ARTICULO", Articulo.Id);

                    Datos.EjecutarAccion();
                }
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
