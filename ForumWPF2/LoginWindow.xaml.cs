using ForumData3;
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

namespace WpfApplication1
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            ForumDAO forumDAO = ForumDAO.GetInstance();
            string login = tbLogin.Text;
            string pswd = passwordBox.Password;


            User logged = forumDAO.Login(login, pswd);
            if (logged != null)
            {
                MainForumWindow fw = new MainForumWindow(logged);
                fw.Show();
                this.Close();
            }
            else
            {
                System.Windows.MessageBox.Show("Niepoprawne dane");
            }
        }
    }
}
