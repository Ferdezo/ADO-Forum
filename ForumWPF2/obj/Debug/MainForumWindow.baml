   M S B A M L   `   `   `  ����D  @ForumWPF2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	   E AForumModel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;,clr-namespace:ForumData3;assembly=ForumModel
ForumData3 5   	   %    WpfApplication1.MainForumWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication1     5   	   ?remote,clr-namespace:ForumData3;assembly=ForumModel     5   	     � 
ResizeMode$  NoResize=�5	   	    � Title$ MainForumWindow��5
   	   $��394.737��6!   $��855.761��62   .��5      � .+�5   
   �� -   5         ��Name$ lbTopic��5      $��Tematy��6!   $
��Left=�62   $��	10,19,0,0q�6M   $	��Top=�6`   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dgTopic��5   /      AutoGenerateColumns .  $
��Left=�6@   $��	10,50,0,0q�6[   $	��Top=�6n   $	��184��5      $	��289��6      
IsReadOnly .  �� SelectedItem 6V   ��  �� Path$ selectedTopic� �� Mode$ TwoWay=�	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.50* 6%   -   5        topicTitleColumn��   Header$ Temat��5   M   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6\   �� *title+  5      $
 0.30* 6%   -   5        topicDateColumn��$ 	Utworzono��5   L    6_   �� *	createdAt+  5      $
 0.20* 6%   -   5        topicAuthorColumn��$ Autor��5   N    6]   �� *author.login+5      �� 5   
   -   5        $ lbPost��5      $��Posty��6    $
��Left=�60   $��
318,20,0,0q�6K   $	��Top=�6_   $��30��6w     5   
   -   5        $ dgPost��5   /    .  $
��Left=�6?   $��
318,50,0,0q�6Z   $	��Top=�6n   $	��184��5      $	��518��6    . 	 5        5      $
 0.60* 6%   -   5        contentPostColumn��$ Zawartość��5   N    6a   �� *	content+  5      $
 0.25* 6%   -	   5        createdPostColumn��$ 	Utworzono��5   N    6a   �� *	createdAt+  5      $
 0.15* 6%   -
   5        authorPostColumn��$ Autor��5   M    6\   �� *
user.login+5      �� 5   
   -   5        $ 	lbContent��5      $��Dodaj post:��6#   $
��Left=�69   $��318,239,0,0q�6T   $	��Top=�6i   $��35��6�   �� 5   
   -   5         ��Name$ 
btnAddPost��5      $��Dodaj��6%   $
��Left=�65   $��318,334,0,0q�6P   $	��Top=�6e   $��90��6}   $��19��6�   6�   �� 5    
   -   5        $ lbContent_Copy��5       $��Dodaj temat:��6(   $
��Left=�6?   $��
10,239,0,0q�6Z   $	��Top=�6n   $��35��6�   �� 5!   
   -   5        $ btnAddTopic��5!      $��Dodaj��6&   $
��Left=�66   $��
10,334,0,0q�6Q   $	��Top=�6e   $��89��6}   $��19��6�   6�   �� 5"   
   -   5        $ btnUserCtrl��5"      $��Zarządzaj użytkownikami��6&   $
��Left=�6H   $��
680,10,0,0q�6c   $	��Top=�6w   $	��156��6�   $��19��6�   6�   �� 5#   
   -   5         ��Name$ textBoxTopic��5#      $
��Left=�6(   $��55��6C   $��
10,274,0,0q�6O    �� TextWrapping$
 Wrap=�6c   $�� ��6w   $	��Top=�6   $	��289��6�   �� 5$   
   -   5        $ textBoxPost��5$      $
��Left=�6'   $��55��6B   $��318,274,0,0q�6N   $
 Wrap=�6c   $�� ��6w   $	��Top=�6   $	��518��6�   5&      5'      