using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio
{
    public class CategoriaNegocio
    {
        public void Agregar(Categoria Categoria)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("INSERT INTO CATEGORIAS (NOMBRE) values (@NOMBRE)");

                Datos.SetParametro("@NOMBRE", Categoria.Nombre);

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
