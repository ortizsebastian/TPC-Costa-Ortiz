using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPC_Dominio
{
    public class Cliente
    {
        public int Id { get; set; }
        public Usuario Usuario { get; set; }
        public Carrito Carrito { get; set; }
    }
}
