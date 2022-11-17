using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WPF_Task8.Commands;
using WPF_Task8.Views;

namespace WPF_Task8.ViewModels
{
    public class ImageUCViewModel : BaseViewModel
    {
        public RelayCommand ImageDoubleClickCommand { get; set; }

        private string imageSource;

        public string ImageSource
        {
            get { return imageSource; }
            set { imageSource = value; OnPropertyChanged(); }
        }

        public ImageUCViewModel()
        {
            ImageDoubleClickCommand = new RelayCommand((i) => 
            {
                App.Index = App.Images.IndexOf(ImageSource);
                var imageWindow = new ImageWindow();
                var imageWindowViewModel = new ImageWindowViewModel();
                imageWindow.DataContext = imageWindowViewModel;
                imageWindow.Owner = App.Current.MainWindow;
                imageWindowViewModel.ImageSource = ImageSource;
                imageWindow.Show();
            });
        }
    }
}
