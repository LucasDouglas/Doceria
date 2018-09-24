using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controllers
{
    public class Controller
    {

        void Inserir(Cliente c)
        {
            BancoDoceria contexto = new BancoDoceria();
            contexto.Cliente.Add(c);
            contexto.SaveChanges();
        }

        List<Cliente> ListarTodosClientes()
        {

            BancoDoceria contexto = new BancoDoceria();
            return contexto.Cliente.ToList();

        }

        Person BuscarPorTelefone(int ClienteTelefone)
        {

            BancoDoceria contexto = new BancoDoceria();
            return contexto.Cliente.Find(ClienteTelefone);

        }

    }
}
