//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Modelos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pedido
    {
        public int IdPedido { get; set; }
        public double ValorPedido { get; set; }
    
        public virtual DoceSabor DoceSabors { get; set; }
        public virtual DoceAdicional DoceAdicionals { get; set; }
        public virtual DoceTipo DoceTipos { get; set; }
        public virtual Venda Vendas { get; set; }
    }
}
