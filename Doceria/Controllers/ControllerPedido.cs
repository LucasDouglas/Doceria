using Controllers.DAL;
using Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controllers
{
    class ControllerPedido
    {
        private Contexto contexto = new Contexto();
        
        public void Inserir (ModelPedido P)
        {
            contexto.Pedido.Add(P);
            contexto.SaveChanges();
        }

        public IList<ModelPedido> ListarPedidos(){
            return contexto.Pedido.ToList();
        }

    }
}
