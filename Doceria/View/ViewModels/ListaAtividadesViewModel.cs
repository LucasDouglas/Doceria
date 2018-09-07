using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace View.ViewModels
{
    public class ListaAtividadesViewModel : INotifyPropertyChanged
    {

        public event PropertyChangedEventHandler PropertyChanged;
        private void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangingEventArgs(propertyName));

        }

        public ObservableCollection<Atividades> Atividades (get ; set ;)

        public ListaAtividadesViewModel()
        {
            Atividades = new ObservableCollection<atvidade>();
            Atividades.add(new Atividade()){
                titulo = "atividade1";
                descricao = "descricaao1".
            }
        }

    
}
