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
using View.Views;

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


          /* telaB minhatelaB = new telaB();
             * minhatelaB.showDialog();
             * */

         private void CarregarTela1_Click(object sender, RoutedEventArgs e)
         {
            TelaCadastro tela1 = new TelaCadastro();
            tela1.Show();

         }

        private void CarregarTela2_Click(object sender, RoutedEventArgs e)
        {
            TelaCliente tela2 = new TelaCliente();
            tela2.Show();

        }

        private void CarregarTela3_Click(object sender, RoutedEventArgs e)
        {
            TelaExibir tela3 = new TelaExibir();
            tela3.Show();

        }

    

    }
}
