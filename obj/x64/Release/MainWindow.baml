   M S B A M L   `   `   `  ���� D  @FluentWPF, Version=0.8.0.6, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF   Nova Control Center   Control_Center.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Efw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF     -   ���	#CC000000  � AllowsTransparency  .  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�*   $SourceChord.FluentWPF.PointerTracker   Enabled .  � Title$ Nova Control Center��$	��400��$	��850�� � WindowStartupLocation$ CenterScreen=� � Icon$ Images/TrayIcon.ico�� � 	Resources    LogoAnimate �� 
TargetName	 �� TargetProperty
 �� From	 �� To g� 	BeginTime g� 
SpeedRatio g� FillBehavior �� EasingFunction.  (System.Windows.Media.Animation.CubicEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode  GoodTimesFont  UbuntuLightFont��%�  &	        &	 �     &	 2    �� .���� $ gradientPath��$	 Color�$
 BlackX�$	 RedX�$ 0:0:0X�$	 1.5Q�$ HoldEnd=�   $ 	EaseInOut=��� $ gradientTitle��$	 Color�$
 BlackX�$ 
WhiteSmokeX�$ 0:0:0X�$	 1.5Q�$ HoldEnd=�   $ 	EaseInOut=�*�.*pack://application:,,,/Font/#Good Times RG)�*�-)pack://application:,,,/Font/#Ubuntu Light)� � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded��.[��� #��[  .���� $��0,0,0,5q� �� CornerRadius$ 10������  �� Color$	 Red�� �� Opacity$	 0.8Q�._��� $��5,5,5,0q�$ 1������  �� 
StartPoint$ 0.5,1&� �� EndPoint$ 0.5,0&�$	 0.8Q�.���  � Color$ 	#12000000�� � Offset$	 0.0Q�� $ 	#12000000��$	 0.5Q�� -   	three��$	 Red��$	 1.0Q�._���  �� Orientation$ Vertical=�.+�� .+��� $��0,10,0,0q�$ 
Horizontal=�$��Center=�.+�F� :x,http://schemas.microsoft.com/winfx/2006/xaml     -   $
��Path������ $	 0.8Q�.��� -   gradientPath��$ Black��$	 1.0Q���� .��B� $����M172.31 70.05a9.56 9.56 0 0 1 7.52 4.29l26.39 45.32a9.31 9.31 0 0 1-.07 8.59l-27.76 45.88a10 10 0 0 1-7.59 4.31l-54.35.4a9.57 9.57 0 0 1-7.52-4.29L82.54 129.24a9.33 9.33 0 0 1 .07-8.6l27.76-45.88A10 10 0 0 1 118 70.45ZC� B� FillRule$ NonZero=�B� $����M46.47 122.49c-1.51 2.3-2.63 4.25-2.48 4.35s1.48 2 3 4.34l55.41 84.42a10.36 10.36 0 0 0 7.74 4.18h5.22a5 5 0 0 0 5-5V198.86s2.25 0 5 0h32.56a5 5 0 0 1 5 5v35.21a4.85 4.85 0 0 1-5 4.86l-64-1.85a10.78 10.78 0 0 1-7.74-4.32L14.77 128.8a8.14 8.14 0 0 1 .06-8.32L85.38 16.22a11 11 0 0 1 7.8-4.28l64-1.85a4.85 4.85 0 0 1 5 4.86V50.16a5 5 0 0 1-5 5H124.63c-2.75 0-5 0-5 0V39.22a5 5 0 0 0-5-5H109.4a10.36 10.36 0 0 0-7.74 4.18ZC�$ NonZero=�B� $����M203.46 28.44a18.54 18.54 0 0 1 6.63 6.85L252 119.74a11.54 11.54 0 0 1 0 9l-41.2 84.88a18.16 18.16 0 0 1-6.59 6.86l-16 8.64c-2.42 1.31-4.34.12-4.26-2.62l.83-28.23a11 11 0 0 1 4.29-7.79l3.67-2.48a22.45 22.45 0 0 0 6.37-7.27l25.55-51.35a11.33 11.33 0 0 0 0-8.94l-26.3-52.23A22.6 22.6 0 0 0 192 60.92l-3.67-2.48A11 11 0 0 1 184 50.65l-.83-28.23c-.08-2.75 1.84-3.93 4.26-2.62ZC�$ NonZero=�z�T�  T� X$ 0Q� T� Y$ 0Q� � LayoutTransform ��  �� ScaleX$	 0.2Q�  �� ScaleY$	  0.2Q��� -   ! ��Name$! txtTitle��#���  $��40(�$��Center=�$��Center=�
������ $
��auto��$
��auto������ .��� -   gradientTitle��$ Black��$	 1.0Q��� $�n���� $�o��
���  ���� $�v���� $�a��
���  ���� $� Control Center���� $ 
Horizontal=�$��Right=�$��0,0,10,0q�.+��� -   " ��Name$" btnMinimize��  ButtonStyle#��[ $��30��$��30��# � ToolTip$# Minimize����(� $ (� Stretch$$ Uniform=�.���� $��_��$
��Wrap=��� -   $" btnClose��#��[ $��30��$��30��$# Close����(� $$ Uniform=�.���� $��X��$
��Wrap=��� $ 
Horizontal=�$��Center=�$��Center=�$��0,10,0,0q�.+��� -	   % ��Name$% WiFi_RadioSwitchList������ .R��� $ Vertical=�$��
20,60,20,0q�.+��� & �� Padding$& 2q�
�������$ 10��$��2q�._�d�    WiFi_ToggleButtonRevealStyle#��[ $	��100��$	��100��
���  ��$��5q�)   #SourceChord.FluentWPF.RevealElement'   BorderRadius$' 10Q�$��10q�( d� 	IsChecked( �� *	IsRadioOn+) �� Mode$) TwoWay=�{��� *	IsEnabled+�� #���  $��0,5,0,0q�$��Center=�$��Center=�
�������$��22(����� *Name+�� -
   $% Bluetooth_RadioSwitchList������ .R��� $ Vertical=�$��
20,60,20,0q�.+��� $& 2q�
�������$ 10��$��2q�._�d�  % !Bluetooth_ToggleButtonRevealStyle#��[ $	��100��$	��100��
���  ��$��5q�$' 10Q�$��10q�( �� *	IsRadioOn+$) TwoWay=�{��� *	IsEnabled+�� #���  $��0,5,0,0q�$��Center=�$��Center=�
�������$��22(����� *Name+�� $ Vertical=�$��
20,60,20,0q�.+��� 
�������$& 2q�$ 10��$��2q�._�d� -   * d�Name$* btnPower�� # Display_ToggleButtonRevealStyle#��[ $	��100��$	��100��
���  ��$��5q�$��10q�$( FalseY��� #���  $��Display��$��0,5,0,0q�$��Center=�$��Center=�
�������$��22(��� $ Vertical=�$��
20,60,20,0q�.+��� 
�������$& 2q�$ 10��$��2q�._�d� -   $* 	btnWebcam�� " Webcam_ToggleButtonRevealStyle#��[ $	��100��$	��100��
���  ��$��5q�$��10q��� #���  $��Webcam��$��0,5,0,0q�$��Center=�$��Center=�
�������$��22(��� $ Vertical=�$��Center=�$��Bottom=�$��0,20,0,0q�.+��� #���  $��
Brightness��
�������$��Center=�$��Center=�$��22(��� -   + ��Name$+ MySlider��  Horizontal_Slider#��[ , � Minimum$, 0Q�- � Maximum$	- 100Q�$��30��$	��450��. � SmallChange$. 1Q�/ � LargeChange$/ 10Q�0 �� TickFrequency$0 1Q�$��0,5,0,0q��� -   $! txtBrightness��#���  $��Center=�$	��Top=�
�������$��22(�