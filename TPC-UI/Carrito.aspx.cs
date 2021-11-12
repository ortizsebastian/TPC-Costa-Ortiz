﻿using TPC_Dominio;
using TPC_Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPC_UI
{
    public partial class Carrito : System.Web.UI.Page
    {
        public List<Articulo> Contenido { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                int Id = int.Parse(Request.QueryString["Id"]);

                ArticuloNegocio Negocio = new ArticuloNegocio();
                Articulo Articulo = new Articulo();

                Articulo = Negocio.Buscar(Id);

                if (Session["Carrito"] == null)
                {
                    List<Articulo> Carrito = new List<Articulo>();
                    Carrito.Add(Articulo);
                    Session["Carrito"] = Carrito;
                }
                else
                {
                    List<Articulo> Carrito = new List<Articulo>();
                    Carrito = (List<Articulo>)Session["Carrito"];
                    Carrito.Add(Articulo);
                    Session["Carrito"] = Carrito;
                }
            }
            else if (Request.QueryString["Remove"] != null)
            {
                int Id = int.Parse(Request.QueryString["Remove"]);

                Contenido = (List<Articulo>)Session["Carrito"];
                foreach (var Articulo in Contenido)
                {
                    if (Articulo.Id == Id)
                    {
                        Contenido.Remove(Articulo);
                        break;
                    }
                }
                Session["Carrito"] = Contenido;
            }
            Contenido = (List<Articulo>)Session["Carrito"];
        }
    }
}