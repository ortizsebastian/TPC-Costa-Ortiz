using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPC_Dominio
{
    public class Persona
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int IdDireccion { get; set; }
        public DateTime Nacimiento { get; set; }
    }
}
