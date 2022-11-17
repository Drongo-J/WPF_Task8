using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WPF_Task8.Commands;

namespace WPF_Task8.ViewModels
{
    public class ImageWindowViewModel : BaseViewModel
    {
        public RelayCommand PreviousImageCommand { get; set; }
        public RelayCommand NextCommand { get; set; }
        public RelayCommand PauseCommand { get; set; }
        public RelayCommand AutoPlayCommand { get; set; }

        private string autoPlayStatus = "Off";

        public string AutoPlayStatus
        {
            get { return autoPlayStatus; }
            set { autoPlayStatus = value; OnPropertyChanged(); }
        }

        private string imageSource;

        public string ImageSource
        {
            get { return imageSource; }
            set { imageSource = value; OnPropertyChanged(); }
        }

        public ImageWindowViewModel()
        {
            System.Windows.Threading.DispatcherTimer dispatcherTimer = new System.Windows.Threading.DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0,0,2);

            PreviousImageCommand = new RelayCommand((p) => 
            {
                if (App.Index == 0)
                {
                    App.Index = App.Images.Count - 1;
                }
                else
                {
                    App.Index--;
                }
                ImageSource = App.Images[App.Index];
            });

            NextCommand = new RelayCommand((n) =>
            {
                if (App.Index == App.Images.Count - 1)
                {
                    App.Index = 0;
                }
                else
                {
                    App.Index++;
                }
                ImageSource = App.Images[App.Index];
            });

            PauseCommand = new RelayCommand((p) =>
            {
                AutoPlayStatus = "Off";
                dispatcherTimer.Stop();
            });


            AutoPlayCommand = new RelayCommand((a) =>
            {
                //NextCommand.Execute(null);
                AutoPlayStatus = "On";
                dispatcherTimer.Start();
            });
        }

        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            NextCommand.Execute(null);
        }
    }
}
