using Modelos;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controllers.DAL
{
    class Contexto : DbContext
    {
        public Contexto() : base("BancoDoceria")
        {

        }

        
        public DbSet<ModelPedido> Pedido { get; set; }


    }
}
