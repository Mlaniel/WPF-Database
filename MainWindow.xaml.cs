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

namespace Mladek_7BBIF
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DBMladekEntities mladekDB = new DBMladekEntities();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            liAbteilung.ItemsSource = mladekDB.Abteilung.ToList();
            
        }

        private void speichern_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int i = mladekDB.SaveChanges();
                Console.WriteLine(i + " DBzeilen betroffen");
            } 
            catch(Exception e1)
            {
                Console.WriteLine(e1.ToString());
            }
        }
    }
}
