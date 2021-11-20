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
        public Domicilio Domicilio { get; set; }
        public int Estado { get; set; } 
    } 
}

//Se elimino la composición de Usuario, falta eliminarlo del Modelo.