   M S B A M L   `   `   `  ����D  @ForumWPF2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	   !    WpfApplication1.UsersWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication1     5   	     � Title$  UsersWindow��5   	   $��395.775��6   $��590.172��6.   .��5	      � $��0,0,2,0q�6    � ColumnDefinitions 5
   
   �� 5      $	��45* �6   �� 5      $
��128* �6   .+�5   
   �� -   5         ��Name$ lbTopic��5      $��Użytkownicy��6!   $
��Left=�67   $��	10,19,0,0q�6R   $	��Top=�6e   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dgUsers��5   /      AutoGenerateColumns .  $
��Left=�6@   $��	10,50,0,0q�6[   $	��Top=�6n   $	��306��5      $	��327��6    $��2��6,      
IsReadOnly .  �� SelectedItem 5   ?   ��  �� Path$ selectedUser� �� Mode$ TwoWay=�	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 * 6%      Header$ Login��6/   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *login+5      �� 5   
   -   5         ��Name$ 
btnUserAdd��5      $��Dodaj��6%   $
��Left=�65   $��
204,24,0,0q�6P   $	��Top=�6d   $��75��6|   $��1��6�   6�   �� 5   
   -   5        $ btnUserEdit��5      $��Edytuj��6&   $
��Left=�67   $��
301,25,0,0q�6R   $	��Top=�6f   $��75��6~   $��1��6�   6�   �� 5   
   -   5        $ btnUserDelete��5      $��Usuń��6(   $
��Left=�67   $��
111,24,0,0q�6R   $	��Top=�6f   $��75��6~   $��1��6�   6�   �� 5   
   -   5         ��Name$ loginTextBox��5      $��1��6(   $
��Left=�68   $��23��6S   $��
256,53,0,0q�6_    �� TextWrapping$
 Wrap=�6s   $�� ��6�   $	��Top=�6�   $	��120��6�   G� 5   
   -   5         G�Name$ pswdTextBox��5      $��1��6+   $
��Left=�6;   $��23��6V   $��
256,81,0,0q�6b   $	��Top=�6v   $	��120��6�   	� 5   
   -   5         	�Name$ 
radioAdmin��5      $��Admin��6H   $��1��6X   $
��Left=�6h   $��256,109,0,0q�6�   $	��Top=�6�   $��58��6�   	� 5   
   -	   5        $ 	radioUser��5      $
��User��6F   $��1��6U   $
��Left=�6e   $��319,109,0,0q�6�   $	��Top=�6�   $��57��6�   �� 5   
   -
   5        $ loginlb��5      $��Login��6!   $��1��61   $
��Left=�6A   $��
213,53,0,0q�6\   $	��Top=�6p   �� 5   
   -   5        $ pswdlb��5      $��Password��6    $��1��63   $
��Left=�6C   $��
191,81,0,0q�6^   $	��Top=�6r   5      5       