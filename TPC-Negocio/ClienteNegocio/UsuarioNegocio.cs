using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;

namespace TPC_Dominio
{
    public class UsuarioNegocio
    {
        public void Agregar(Usuario Usuario)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("INSERT INTO USUARIOS (USERNAME, PASSWORD, EMAIL) values (@USERNAME, @PASSWORD, @EMAIL)");

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
    }
}
