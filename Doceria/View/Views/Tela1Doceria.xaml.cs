using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Doceria.Views
{
    /// <summary>
    /// Interação lógica para Tela1Doceria.xam
    /// </summary>
    public partial class Tela1Doceria : UserControl
    {
        public Tela1Doceria()
        {
            InitializeComponent();

            
            //AtividadeViewModel vm = new AtividadeViewModel();
            //vm.Titulo = "Primeira Atividade";
            //vm.descricao = "criando projeto no formato mvm";.....

            // DataContext = new ViewModels.AtividadeViewVodel();
        }

        private void CarregarTelaPedidos_Click(object sender, RoutedEventArgs e)
        {
            /* telaA minhatelaA = new telaA();
             * minhatelaA.show();
             * */

            telaPedido telaA = new telaPedido();
            telaA.show();
        }

        private void CarregarTelaCadastros_Click(object sender, RoutedEventArgs e)
        {
            /* telaB minhatelaB = new telaB();
             * minhatelaB.showDialog();
             * */
            telaCadastro telaB = new telaCadastro();
            telaB.show();


        }

        private void ClienteCadastrado_Click(object sender, RoutedEventArgs e)
        {
            telaExibir telaC = new telaExibir();
            telaC.show();
        }
    }
}
