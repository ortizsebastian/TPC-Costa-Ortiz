using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio
{
    public class DomicilioNegocio
    {
        public Domicilio Buscar(Domicilio Domicilio)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("SELECT ID, CALLE, NUMERO, PROVINCIA FROM DOMICILIOS WHERE CALLE = @CALLE AND NUMERO = @NUMERO AND PROVINCIA = @PROVINCIA");
                Datos.SetParametro("CALLE",Domicilio.Calle);
                Datos.SetParametro("NUMERO",Domicilio.Numero);
                Datos.SetParametro("PROVINCIA",Domicilio.Provincia);
                Datos.EjecutarLectura();

                Domicilio Objeto = new Domicilio();

                if (Datos.Lector.Read())
                {
                    Objeto.Id = (int)Datos.Lector["ID"];
                    Objeto.Calle = (string)Datos.Lector["CALLE"];
                    Objeto.Numero = (int)Datos.Lector["NUMERO"];
                    Objeto.Provincia = (string)Datos.Lector["PROVINCIA"];
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

        public void Agregar(Domicilio Domicilio)
        {
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("INSERT INTO DOMICILIOS (CALLE, NUMERO, PROVINCIA) VALUES (@CALLE, @NUMERO, @PROVINCIA)");
                Datos.SetParametro("@CALLE", Domicilio.Calle);
                Datos.SetParametro("@NUMERO", Domicilio.Numero);
                Datos.SetParametro("@PROVINCIA", Domicilio.Provincia);
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
        public void Modificar(Domicilio Domicilio)
        {
            AccesoDatabase Datos = new AccesoDatabase();
            try
            {
                Datos.SetConsulta("UPDATE DOMICILIOS SET CALLE = @CALLE, NUMERO = @NUMERO, PROVINCIA = @PROVINCIA WHERE ID ='" + Domicilio.Id + "'");
                Datos.SetParametro("@CALLE", Domicilio.Calle);
                Datos.SetParametro("@NUMERO", Domicilio.Numero);
                Datos.SetParametro("@PROVINCIA", Domicilio.Provincia);
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
