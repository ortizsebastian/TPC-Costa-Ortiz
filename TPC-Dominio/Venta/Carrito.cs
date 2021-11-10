using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Dominio;

namespace TPC_Dominio
{
    public class Carrito
    {
        public List<Articulo> ListaArticulo { get; set; }
        public int Total { get; set; }
        public bool Estado { get; set; }
    }
}
