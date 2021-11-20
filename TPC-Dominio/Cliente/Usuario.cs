using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TPC_Dominio
{
    //Lo puedo hacer asi o puedo sacar la herencia y agregar un IdPersona 
    public class Usuario : Persona        
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public bool Tipo { get; set; }
        public bool Estado { get; set; }
    }
}
