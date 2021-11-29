using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio
{

    public class VentaNegocio
    {
        public List<Venta> Listar()
        {
            AccesoDatabase Datos = new AccesoDatabase();
            List<Venta> Lista = new List<Venta>();
            try
            {
                Datos.SetConsulta("SELECT ID, MONTO, FORMA, CUOTAS, ID_USUARIO, ID_CLIENTE FROM VENTAS");
                Datos.EjecutarLectura();

                while (Datos.Lector.Read())
                {
                    Venta Objeto = new Venta();

                    Objeto.Id = (int)(Datos.Lector["ID"]);
                    Objeto.Monto = (int)Datos.Lector["MONTO"];
                    Objeto.Forma = (string)Datos.Lector["FORMA"];
                    Objeto.Cuotas = (int)Datos.Lector["CUOTAS"];
                    Objeto.Usuario.Id = (int)Datos.Lector["ID_USUARIO"];
                    Objeto.Cliente.Id = (int)Datos.Lector["ID_CLIENTE"];

                    Lista.Add(Objeto);
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

            return Lista;
        }

        public void Agregar(Venta Venta)
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("INSERT INTO VENTAS (MONTO, FORMA, CUOTAS, ID_USUARIO, ID_CLIENTE) VALUES (@MONTO, @FORMA, @CUOTAS, @ID_USUARIO, @ID_CLIENTE)");

                Datos.SetParametro("@MONTO", Venta.Monto);
                Datos.SetParametro("@FORMA", Venta.Forma);
                Datos.SetParametro("@CUOTAS", Venta.Cuotas);

                Datos.SetParametro("@ID_USUARIO", );
                Datos.SetParametro("@ID_CLIENTE", );


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
