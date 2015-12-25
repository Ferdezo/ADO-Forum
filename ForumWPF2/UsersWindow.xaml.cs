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
using System.Windows.Shapes;
using ForumData3;
namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for UsersWindow.xaml
    /// </summary>
    public partial class UsersWindow : Window
    {
        User selectedUser = null;
        User user;
        ForumDAO forumDAO = ForumDAO.GetInstance();
        public UsersWindow(User user)
        {
            InitializeComponent();
            this.user = user;
            dgUsers.ItemsSource = forumDAO.GetUsers();
        }

        private void dgUsers_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            selectedUser = (User)dgUsers.SelectedItem;
            if (selectedUser == null)
                return;
            loginTextBox.Text = selectedUser.login;
            pswdTextBox.Password = selectedUser.password;
            if (selectedUser.role == Role.ADMIN)
            {
                radioUser.IsChecked = false;
                radioAdmin.IsChecked = true;
            }
            else
            {
                radioAdmin.IsChecked = false;
                radioUser.IsChecked = true;
            }
        }

        private void radioUser_Checked(object sender, RoutedEventArgs e)
        {
            radioAdmin.IsChecked = false;
        }

        private void radioAdmin_Checked(object sender, RoutedEventArgs e)
        {
            radioUser.IsChecked = false;
        }

        private void btnUserDelete_Click(object sender, RoutedEventArgs e)
        {
            if(selectedUser == null)
            {
                System.Windows.MessageBox.Show("Wybierz użytkownika");
                return;
            }

            if(!forumDAO.DeleteUser(selectedUser))
            {
                System.Windows.MessageBox.Show("Nie można usunąć użytkownika");
                return;
            }
            dgUsers.ItemsSource = forumDAO.GetUsers();
            
        }

        private void btnUserAdd_Click(object sender, RoutedEventArgs e)
        {
            string login = loginTextBox.Text;
            if(login == null || "".Equals(login))
            {
                System.Windows.MessageBox.Show("Wpisz login");
                return;
            }
            string pswd = pswdTextBox.Password;
            if (pswd == null || "".Equals(pswd))
            {
                System.Windows.MessageBox.Show("Wpisz hasło");
                return;
            }

            if(radioUser.IsChecked == false && radioAdmin.IsChecked == false)
            {
                System.Windows.MessageBox.Show("Wybierz role");
                return;
            }

            Role role = Role.USER;
            if (radioAdmin.IsChecked == true)
                role = Role.ADMIN;

            if(!forumDAO.AddUser(login, pswd, role))
            {
                System.Windows.MessageBox.Show("Nie można dodać takiego użytkownika");
                return;
            }
            dgUsers.ItemsSource = forumDAO.GetUsers();
        }

        private void btnUserEdit_Click_1(object sender, RoutedEventArgs e)
        {
            string login = loginTextBox.Text;
            if (login == null || "".Equals(login))
            {
                System.Windows.MessageBox.Show("Wpisz login");
                return;
            }
            string pswd = pswdTextBox.Password;
            if (pswd == null || "".Equals(pswd))
            {
                System.Windows.MessageBox.Show("Wpisz hasło");
                return;
            }

            if (radioUser.IsChecked == false && radioAdmin.IsChecked == false)
            {
                System.Windows.MessageBox.Show("Wybierz role");
                return;
            }

            Role role = Role.USER;
            if (radioAdmin.IsChecked == true)
                role = Role.ADMIN;

            selectedUser.login = login;
            selectedUser.password = pswd;
            selectedUser.role = role;

            
            if (!forumDAO.EditUser(selectedUser))
            {
                System.Windows.MessageBox.Show("Złe dane do edycji");
                return;
            }
            dgUsers.ItemsSource = forumDAO.GetUsers();
        }
    }
}
