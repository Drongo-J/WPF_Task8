   M S B A M L   `   `   `  ����D  @WPF_Task8, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WPF_Task8.ViewsWPF_Task8.Views  5   	   !    WPF_Task8.Views.ImageWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WPF_Task8.Views     5   	     � Title$  ImageWindow��5   	   $	��450��5	   	   $	��800��5
   	    � WindowStartupLocation$ CenterOwner=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $��4* �6   6*   �� 5      $��* �6   6)   .+�5   
   � $��0��6   .+�5      �� ��6   �� *ImageSource+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6g   5      � 5   
   $��1��6   .+�5      �� .+�5      ��  � Cursor$
 Hand��6   $��\Images\left.png��6&   $��72��6@   $��65��6L    �� Left$	 245��6W   
 �� Top$ 11��6i   $��Center=�6y   $	��Top=�6�    J� InputBindings 5      d� 5      	 d� Gesture$	 	LeftClicka�6'   
 �� Command
 6;   �� *PreviousImageCommand+6f   5      �� 5      $
 Hand��6   $��\Images\pause.png��6&   $��70��6A   $��70��6M   $��Center=�6X   $	 315��6u   $	��Top=�6�   $ 7��6�    5      d� 5      $	 	LeftClicka�6'   
 6;   �� *PauseCommand+6^   5!      �� 5"      $
 Hand��6   $��\Images\autoplay.png��6&   $��70��6D   $��70��6P   $	 400��6[   $ 8��6m   $
��Left=�6|   $��Center=�6�    5#      d� 5$      $	 	LeftClicka�6'   
 6;   �� *AutoPlayCommand+6a   5&      �� 5'      $
 Hand��6   $��\Images\right.png��6&   $��50��6A   $��50��6M   $
��Left=�6X   $	 490��6s   $��Center=�6�   $ 18��6�    5(      d� 5)      $	 	LeftClicka�6'   
 6;   �� *NextCommand+6]   5+      �� 5-      $��Autoplay : ��6   $��20(�5.      $��Medium"�5/      $	 597��50      $ 29��51      52      �� 53      $��20(�54      $��Medium"�55      $	 695��60   $ 30��6B   $��Center=�6R   $	��Top=�6o   ��53      �� *AutoPlayStatus+$ TwoWay=�$ PropertyChanged=�56      57      58      59      5:      