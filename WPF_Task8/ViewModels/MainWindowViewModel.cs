using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using WPF_Task8.Commands;
using WPF_Task8.Repositories;
using WPF_Task8.Views;

namespace WPF_Task8.ViewModels
{
    public class MainWindowViewModel : BaseViewModel
    {
        public RelayCommand SmallIconsCommand { get; set; }
        public RelayCommand MediumIconsCommand { get; set; }
        public RelayCommand LargeIconsCommand { get; set; }
        public RelayCommand AddImageCommand { get; set; }

        public WrapPanel ImagesWrapPanel { get; internal set; }
        public MenuItem ViewMenuItem { get; internal set; }

        public MainWindowViewModel()
        {
            SmallIconsCommand = new RelayCommand((l) =>
            {
                CheckIndexOfMenuItemChildren(ViewMenuItem, 0);
                App.Height = 100;
                App.Width = 185;
                AddImagesToView();
            });

            MediumIconsCommand = new RelayCommand((l) =>
            {
                CheckIndexOfMenuItemChildren(ViewMenuItem, 1);
                App.Height = 140;
                App.Width = 260;
                AddImagesToView();
            });

            LargeIconsCommand = new RelayCommand((l) =>
            {
                CheckIndexOfMenuItemChildren(ViewMenuItem, 2);
                App.Height = 180;
                App.Width = 300;
                AddImagesToView();
            });

            AddImageCommand = new RelayCommand((a) => 
            {
                var openFileDialog = new OpenFileDialog();
                if (openFileDialog.ShowDialog() == true)
                {
                    App.Images.Add(openFileDialog.FileName);
                    AddImagesToView();
                }
            });
        }

        public void CheckIndexOfMenuItemChildren(MenuItem menuItem, int index)
        {
            for (int i = 0; i < menuItem.Items.Count; i++)
            {
                var item = (menuItem.Items[i] as MenuItem);
                item.IsChecked = false;
                if (i == index)
                {
                    item.IsChecked = true;
                }
            }
        }

        public void AddImagesToView()
        {
            ImagesWrapPanel.Children.Clear();
            for (int i = 0; i < App.Images.Count; i++)
            {
                var imageView = new ImageUC();
                var imageViewModel = new ImageUCViewModel();
                imageView.DataContext = imageViewModel;
                imageViewModel.ImageSource = App.Images[i];
                imageView.Height = App.Height;
                imageView.Width = App.Width;
                ImagesWrapPanel.Children.Add(imageView);
            }
        }

        public void DropEvent(object sender, DragEventArgs e)
        {
            if (e.Data.GetData(DataFormats.FileDrop) != null)
            {
                string[] files = (string[])e.Data.GetData(DataFormats.FileDrop);
                foreach (string file in files)
                {
                    BitmapImage myBitmapImage = new BitmapImage(new Uri($@"{file}", UriKind.Relative));
                    myBitmapImage.CacheOption = BitmapCacheOption.Default;
                    App.Images.Add($@"{file}");
                }
                AddImagesToView();
                return;
            }
        }
    }
}
