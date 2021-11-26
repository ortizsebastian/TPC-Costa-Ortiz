using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPC_Dominio
{
    public class Carrito
    {
        public int Id { get; set; }
        public int IdArticulo { get; set; }
        public int IdVenta { get; set; }
        public int Estado { get; set; }
    }
}
