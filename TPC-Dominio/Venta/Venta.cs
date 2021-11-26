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
        public decimal Precio { get; set; }
        public string Pago { get; set; }
        public List<Articulo> Carrito { get; set; }
        public Usuario Usuario { get; set; }
        public Domicilio Domicilio { get; set; }
        public bool Estado { get; set; }
    }
}
