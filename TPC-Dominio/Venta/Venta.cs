using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPC_Dominio
{
    public class Venta
    {
        public int Id { get; set; }
        public int IdCliente { get; set; }
        public int IdCarrito { get; set; }
        public int IdEnvio { get; set; }
        public int IdPago { get; set; }
        public bool Estado { get; set; }
    }
}
