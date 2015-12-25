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
    /// Interaction logic for MainForumWindow.xaml
    /// </summary>
    public partial class MainForumWindow : Window
    {
        List<Topic> topics = new List<Topic>();
        List<Post> posts = new List<Post>();
        Topic selectedTopic = null;

        User user = new User()
        {
            usrID = 2,
            login = "admin",
            password = "nimda",
            role = Role.ADMIN
        };

        ForumDAO forumDAO = ForumDAO.GetInstance();

        public MainForumWindow(User user)
        {
            InitializeComponent();
            this.user = user;
            dgTopic.ItemsSource = forumDAO.GetTopics();
        }

        private void btnAddPost_Click(object sender, RoutedEventArgs e)
        {
            if(selectedTopic == null)
            {
                System.Windows.MessageBox.Show("Wybierz temat");
                return;
            }
            string content = textBoxPost.Text;
            if ("".Equals(content))
                return;
            textBoxPost.Text = "";
            forumDAO.AddPost(content, selectedTopic, user);
            dgPost.ItemsSource = forumDAO.GetPosts(selectedTopic);    
        }

        private void btnAddTopic_Click(object sender, RoutedEventArgs e)
        {
            String title = textBoxTopic.Text;
            if("".Equals(title))
                return;
            textBoxTopic.Text = "";
            forumDAO.AddTopic(title, user);
            dgTopic.ItemsSource = forumDAO.GetTopics();
        }

        private void btnUserCtrl_Click(object sender, RoutedEventArgs e)
        {
            if(user.role == Role.ADMIN)
            {
                UsersWindow uw = new UsersWindow(user);
                uw.Show();
            }
            else
            {
                System.Windows.MessageBox.Show("Nie masz uprawinień");
            }
        }

        private void dgTopic_Selected(object sender, RoutedEventArgs e)
        {
            selectedTopic = (Topic) dgTopic.SelectedItem;
            dgPost.ItemsSource = forumDAO.GetPosts(selectedTopic);
        }
    }
}
