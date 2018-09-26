using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public class ModelPedido
    {
        [Key]
        public int IdPedido { get; private set; }
        public int ValorPedido { get; set; }
        public int DoceSabors { get; set; }
        public int DoceAdicionals { get; set; }
        public int DoceTipos { get; set; }



    }
}
