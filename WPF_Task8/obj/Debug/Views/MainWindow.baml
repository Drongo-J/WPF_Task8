   M S B A M L   `   `   `  ����D  @WPF_Task8, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WPF_Task8	WPF_Task8  5   	       WPF_Task8.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WPF_Task8     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   h dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  6N     � Title$  Photos��5	   	   $	��550��5
   	   $
��1000��5   	    � WindowStyle$ ThreeDBorderWindow=�5   	    � 	Resources 5       �� 
TargetType �� Property �� Value �� 
TargetType �� 
StartPoint �� EndPoint   BorderLightColor	 � Color
 � Offset  BorderDarkColor  ControlLightColor  ControlMediumColor �� Orientation K� IsItemsHost��%�  'o�       �� 5   
   " o�5      .�5      ��  �@�OverridesDefaultStyle . 5      �� 5       �@J�SnapsToDevicePixels . 5      �� 5       � �� 5      �� 5      " o�6&   .R�5      �� $��1q�6!   ��5      �� 5   "   $	 0,0&�66   $	 0,1&�5   "   ��5   *   � � 5   .   #	 �   6;   $	
 0.0Q�5   !   � 5   .   #	 �  6;   $	
 1.0Q�5    !   5!   +   5#   #   ��5&      �� 5'   "   $ 0.5,1&�66   $ 0.5,0&�5(   "   .��5)   &   � #	 �  63   $
 0Q�5*      � 5+   &   #	 �  63   $
 1Q�5,      5-   #   ._�5/      �� }�. $ 
Horizontal=�50       . 51      52      53      55      56      57      .��58      �  � RowDefinitions 59   
   �� 5:      $��* �6   6)   �� 5;      $	��10* �6   6+   .+�5>   
   � $��0��6   .+�5?      o� .@�5@      m� $
��File��6   $��40��5A      $	��100��5B       � Cursor$
 Hand��5C      $��30(�5D       m� Icon 5E      �� 5F      $��\Images\file.png��6    $��	0,0,-8,-4q�6:   6O   .@�5N      m� $	��New��6   $
 Hand��5O      $��10(�5P      5Q      m� 5S      $
��Open��6   $
 Hand��5T      $��10(�5U      5V      m� 5Y      $
��Save��6   $
 Hand��5Z      $��10(�5[      5\      m� 5_      $��Save AS��6   $
 Hand��5`      $��10(�5a      5b      5c      m� 5f      $
��Edit��6   $��40��5g      $	��100��5h      $
 Hand��5i      $��30(�5j       5k      �� 5l      $��\Images\edit.png��6    $��-1,-1,-6,-5q�6:   6Q   .@�5n      m� $��	Add Image��6   $
 Hand��5o      $��10(�5p       m� Command 5q      �� *AddImageCommand+5r      5x      m� 5z      -   5         m�Name$ ViewMenuItem��5      $
��View��5z      $��40��5{      $	��100��5|      $
 Hand��5}      $��30(�5~       5�      �� 5�      $��\Images\view.png��6    $��	0,0,-8,-9q�6:   6O   .@�5�      m� $��Small Icons��6   $
 Hand��5�       m� IsCheckable . $��10(�5�       5�      �� *SmallIconsCommand+5�      m� 5�      $��Medium Icons��6   $
 Hand��5�      $��10(�5�       m� 	IsChecked .  .  5�      �� *MediumIconsCommand+5�      m� 5�      $��Large Icons��6   $
 Hand��5�       . $��10(�5�       5�      �� *LargeIconsCommand+5�      5�      m� 5�      $��About��6   $��40��5�      $	��115��5�      $��30(�5�       5�      �� 5�      $��\Images\about.png��6    $��	0,0,-8,-9q�6;   6P   5�      5�      5�      � 5�   
   $��1��6   .+�5�      �� $��Disabled=�6   $
��Auto=�5�      .��5�      � -   5         �Name$ ImagesWrapPanel��5�       J� 	AllowDrop . 
�������.  (System.Windows.Interactivity.Interaction   Triggers 5�      /  )System.Windows.Interactivity.EventTrigger  5�         	EventName$
 Drop��6)   .  (System.Windows.Interactivity.TriggerBase   Actions. 5�      >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$ 	DropEvent��6K      TargetObject 62   �� 6K   5�      5�      5�      5�      5�      5�      