using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace View.ViewModels
{
    class ExemploAula : INotifyPropertyChanged
    {

        #region INotifyPropertyChanged

        public event PropertyChangedEventHandler PropertyChanged;


        private void NotifyPropertyChanged([CallerMemberName] string propertyName ="")
        {
            if(PropertyChanged != null)
            PropertyChanged(this, new PropertyChangingEventArgs(propertyName));

        }

        #endregion


        private int atividadeID;

        public int ativdadeIDEXEMPLO
        {
            get {return atividadeID ;}
            set
            {
                atividadeID = value;
                NotifyPropertyChanged("atividadeID");
            }
        }

    }

}
