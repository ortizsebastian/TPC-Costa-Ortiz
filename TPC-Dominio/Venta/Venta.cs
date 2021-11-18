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
        public Cliente Cliente { get; set; }
        public Carrito Carrito { get; set; }
        public Envio Envio { get; set; }
        public string Pago { get; set; } //Se elimino la clase Pago.
        public bool Estado { get; set; }
    }
}
