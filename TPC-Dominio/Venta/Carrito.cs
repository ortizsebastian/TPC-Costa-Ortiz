﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TPC_Dominio;

namespace TPC_Dominio
{
    public class Carrito
    {
        public int Id { get; set; }
        public List<Articulo> Articulo { get; set; }
        public int Precio { get; set; }
        public bool Estado { get; set; }
    }
}