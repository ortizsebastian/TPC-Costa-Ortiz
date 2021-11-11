using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPC_Dominio
{
    public class Envio
    {
        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public int IdDireccion { get; set; }
        public int Estado { get; set; }
    }
}
