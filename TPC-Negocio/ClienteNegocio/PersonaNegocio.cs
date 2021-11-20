using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Database;
using TPC_Dominio;

namespace TPC_Negocio
{
    public class PersonaNegocio
    {
        public Usuario Buscar(int Id) //Pasandole el ID del Usuario busca el objeto Persona completo.
        {
            AccesoDatabase Datos = new AccesoDatabase();

            try
            {
                Datos.SetConsulta("SELECT P.NOMBRE, P.APELLIDO, P.TELEFONO, D.CALLE, D.NUMERO, D.PROVINCIA FROM PERSONAS AS P JOIN DOMICILIOS AS D ON P.ID_DOMICILIO = D.ID JOIN USUARIOS AS U ON P.ID = U.ID   WHERE U.ID =" + Id);
                Datos.EjecutarLectura();

                Usuario Objeto = new Usuario();

                if(Datos.Lector.Read())
                {
                    Objeto.Nombre = (string)Datos.Lector["NOMBRE"];
                    Objeto.Apellido = (string)Datos.Lector["APELLIDO"];
                    Objeto.Telefono = (string)Datos.Lector["TELEFONO"];

                    Objeto.Domicilio = new Domicilio();
                    Objeto.Domicilio.Calle = (string)Datos.Lector["CALLE"];
                    Objeto.Domicilio.Numero = (int)Datos.Lector["NUMERO"];
                    Objeto.Domicilio.Provincia = (string)Datos.Lector["PROVINCIA"];
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
    }
}
