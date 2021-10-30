using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace TPC_Negocio
{
    public class AccesoDatos
    {
        private SqlConnection Conexion;

        private SqlCommand Comando;
        public SqlDataReader Lector { get; set; }
        public AccesoDatos()
        {
            Conexion = new SqlConnection("server=.\\SQLEXPRESS; database=ECOMMERCE_DB; integrated security=true");
            Comando = new SqlCommand();
        }
        public void SetConsulta(string consulta)
        {
            Comando.CommandType = System.Data.CommandType.Text;
            Comando.CommandText = consulta;
        }
        public void EjecutarLectura()
        {
            Comando.Connection = Conexion;
            try
            {
                Conexion.Open();
                Lector = Comando.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void EjecutarAccion()
        {
            Comando.Connection = Conexion;

            try
            {
                Conexion.Open();
                Comando.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void SetParametro(string nombre, object valor)
        {
            Comando.Parameters.AddWithValue("nombre", valor);
        }
        public void CerrarConexion()
        {
            if (Lector != null) Lector.Close();
            Conexion.Close();
        }
    }
}
