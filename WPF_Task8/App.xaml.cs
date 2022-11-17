using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using WPF_Task8.Repositories;

namespace WPF_Task8
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static WrapPanel ImagesWrapPanel { get; set; } = new WrapPanel();
        public static List<string> Images { get; internal set; } = FakeRepo.GetImages();
        public static int Height { get; internal set; } = 140;
        public static int Width { get; internal set; } = 260;
        public static int Index { get; internal set; }
    }
}
    