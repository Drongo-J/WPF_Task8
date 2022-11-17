using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPF_Task8.Repositories
{
    public static class FakeRepo
    {
        public static List<string> GetImages()
        {
            var images = new List<string>();
            images.Add(@"\Images\n1.jpeg");
            images.Add(@"\Images\n2.jpeg");
            images.Add(@"\Images\n3.jpeg");
            images.Add(@"\Images\n4.jpeg");
            images.Add(@"\Images\n5.jpeg");
            images.Add(@"\Images\n6.jpeg");
            images.Add(@"\Images\n7.jpeg");
            images.Add(@"\Images\n8.jpeg");
            images.Add(@"\Images\n9.jpeg");
            images.Add(@"\Images\n10.jpeg");
            images.Add(@"\Images\n11.jpeg");
            images.Add(@"\Images\n12.jpeg");
            images.Add(@"\Images\n13.jpeg");
            images.Add(@"\Images\n14.jpeg");
            images.Add(@"\Images\n15.jpeg");
            images.Add(@"\Images\n16.jpeg");
            return images;
        }
    }
}
