   M S B A M L   `   `   `  ����D  @FluentWPF, Version=0.8.0.6, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF  5      fAclr-namespace:SourceChord.FluentWPF.Animations;assembly=FluentWPF SourceChord.FluentWPF.Animations  5      fAclr-namespace:SourceChord.FluentWPF.Converters;assembly=FluentWPF SourceChord.FluentWPF.Converters  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0895    /SourceChord.FluentWPF.RelativePositionConverter   relativePositionConverter>   8SourceChord.FluentWPF.Converters.HeightToRadiusConverter  HeightToRadiusConverter4   .SourceChord.FluentWPF.Converters.RectConverter  RectConverter % !Bluetooth_ToggleButtonRevealStyle  �� 
TargetType �� Property �� Value  SystemBaseHighColorBrush " SystemBaseMediumHighColorBrush)   #SourceChord.FluentWPF.RevealElement  SystemBaseLowColorBrush �� 
TargetType'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName		 W� To
 g� Duration W� EasingFunction.  (System.Windows.Media.Animation.CubicEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode-	  'System.Windows.Media.Animation.SineEase g� 	BeginTime W� From5
   /SourceChord.FluentWPF.Animations.BrushAnimation g� AutoReverse	 
  To �� Color 
  EasingFunction ��Name �� CornerRadius �� RelativeSource �� AncestorType �� Path J� Opacity0   *SourceChord.FluentWPF.RevealBrushExtension   Color   Size   Opacity ��Name J� Clip �� RadiusX �� RadiusY  �� Rect! `� 	Converter" � MappingMode# 
� RadiusY$ 
� RadiusX% 
� Center& 
� GradientOrigin' � Color( � Offset) ��Name* J� SnapsToDevicePixels+ �Name, J� OpacityMask- �� Triggers. P� Property/ P� Value0 �� 
TargetName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      =fw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF  5      O	animationAclr-namespace:SourceChord.FluentWPF.Animations;assembly=FluentWPF  5      P
convertersAclr-namespace:SourceChord.FluentWPF.Converters;assembly=FluentWPF  5      %9"  &	        &	      &	 &     &	 9     7  7   7      5      6#     5      6)     5      6   �� 5
      "  d�66   .�5   
   ��  �@�OverridesDefaultStyle . 62   �� 5   
    � ��# �  6'   �� 5   
    � �� �#0000006'   �� 5   
    � ��# �  6(   �� 5   
    � ��$ 2q�6,   �� 5   
    � ��$ Center=�67   �� 5   
    � ��$ Center=�65   �� 5   
    �@J�SnapsToDevicePixels . 60   �� 5   
    �@�UseLayoutRounding . 6.   �� 5   
    �@ MouseOverForeground# �  6A   �� 5   
    �@ MouseOverBackground �#0000006A   �� 5   
    �@ MouseOverBorderOpacity$	 0.5Q�6D   �� 5   
    �@ PressBorderOpacity$	 0.5Q�6@   �� 5   
    �@ BorderRadius$ 10Q�6:   �� 5   
    �@ PressTintBrush# �  6<   �� 5   
    � �� 5      �� 5      " d�6"   .R�5      �  5        5       CommonStates��. 5!   "     
Normal��. 5"   &   �� .��5#   *   W� $ (UIElement.Opacity)�6:   $ backgroundBorder��6j   $		 0.0X�5$   :   $
 	0:0:0.600D�6C    5%   .     5&   2   $ EaseOut=�6<   5(   +   W� 5)   *   $ (UIElement.Opacity)�6:   $ 
pressLight��6j   $	 0X�5*   :   $
 	0:0:0.100D�6A    5+   .     5,   2   $ EaseOut=�6<   5.   +   5/   '   50   #     51   "   	MouseOver��. 52   &   �� .��53   *   W� $ (UIElement.Opacity)�6:   $ backgroundBorder��6j   $		 0.5X�54   :   $
 	0:0:0.600D�6C    55   .     56   2   $ EaseOut=�6<   58   +   W� 5:   *   $ (UIElement.Opacity)�6:   $ 
pressLight��6j   $	 0X�5;   :   $
 	0:0:0.200D�6A    5<   .     5=   2   $ EaseOut=�6<   5?   +   W� 5A   *   $# (RadialGradientBrush.RadiusX)�6:   $ brush��6t   $		 200X�5B   :   $
 	0:0:0.200D�6C    5C   .   	  5D   2   $ 	EaseInOut=�6;   5F   +   W� 5G   *   $# (RadialGradientBrush.RadiusY)�6:   $ brush��6t   $		 200X�5H   :   $
 	0:0:0.200D�6C    5I   .   	  5J   2   $ 	EaseInOut=�6;   5L   +   5M   '   5N   #     5O   "   Pressed��. 5P   &   �� .��5Q   *   W� $ (UIElement.Opacity)�6:   $ backgroundBorder��6j   $	 1X�5R   :   $
 	0:0:0.600D�6A    5S   .     5T   2   $ EaseOut=�6<   5V   +   W� 5X   *   $ (UIElement.Opacity)�6:   $ 
pressLight��6j   $	 1X�5Y   :   $
 	0:0:0.100D�6A    5Z   .     5[   2   $ EaseOut=�6<   5]   +   W� 5^   *   $ (UIElement.Opacity)�6:   $ 
pressLight��6j   $	 0X�5_   :   $ 	0:0:0.150X�6A   $
 	0:0:1.500D�6W    5`   .     5a   2   $ EaseOut=�6<   5c   +   W� 5e   *   $# (RadialGradientBrush.RadiusX)�6:   $ brush��6t   $	 100X�5f   :   $	 50X�6E   $
 	0:0:0.100D�6M    5g   .     5h   2   $ EaseOut=�6<   5j   +   W� 5k   *   $# (RadialGradientBrush.RadiusX)�6:   $ brush��6t   $		 200X�5l   :   $ 	0:0:0.150X�6C   $
 	0:0:1.500D�6Y    5m   .   	  5n   2   $ 	EaseInOut=�6;   5p   +   W� 5q   *   $# (RadialGradientBrush.RadiusY)�6:   $ brush��6t   $	 100X�5r   :   $	 50X�6E   $
 	0:0:0.100D�6M    5s   .     5t   2   $ EaseOut=�6<   5v   +   W� 5w   *   $# (RadialGradientBrush.RadiusY)�6:   $ brush��6t   $		 200X�5x   :   $ 	0:0:0.150X�6C   $
 	0:0:1.500D�6Y    5y   .   	  5z   2   $ 	EaseInOut=�6;   5|   +   W� 5}   *   $ Offset�6:   $ offset��6]   $	 0X�5~   :   $
 	0:0:0.000D�6A    5   .   	  5�   2   $ 	EaseInOut=�6;   5�   +   W� 5�   *   $ Offset�6:   $ offset��6]   $ 0X�5�   :   $		 0.8X�6C   $ 	0:0:0.150X�6L   $
 	0:0:1.500D�6b    5�   .   	  5�   2   $ EaseOut=�6;   5�   +   W� 5�   *   $ Opacity�6:   $ brush��6^   $	 0X�5�   :   $ 	0:0:0.200X�6A   $
 	0:0:2.000D�6W    5�   .   	  5�   2   $ 	EaseInOut=�6;   5�   +   5�   '   5�   #     5�   "   Disabled��. 5�   &   �� .��5�   *   
  $ (TextElement.Foreground)�6C   $ contentPresenter��6x   $
 	0:0:0.100D�5�   C    .   5�   .   �� 5�   2   $ 	#FF838383��6B    5�   .   	  5�   2   $ 	EaseInOut=�6;   5�   +   W� 5�   *   $ Opacity�6:   $ border��6^   $	 0X�5�   :   $
 	0:0:0.100D�6A    .   5�   .   	  5�   2   $ 	EaseInOut=�6;   5�   +   5�   '   5�   #   5�      .+�5�      �� $ 
background��6!   #��z��65    5�   !   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)��� 5�      $ pressTintLayer��6!   $y�Hidden=�5�   !   ��5�   !   ��  �� *FindAncestor+$ ToggleButtonL�$' !(fw:RevealElement.PressTintBrush)� 5�   !   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�5�   !   �� 5�      $ backgroundBorder��6!   $ 0Q�5�   !    5�   !   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�._�5�      � }�. .+�5�   "   �� $ mouseoverLight��6)   ��6A     $ White��$	 300Q�$	 0.2Q� 5�   )   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)��� 5�   "   $ 
pressLight��6,    5�   &   �� 5�   *    6<   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)� 5�   <   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�  5�   .   `� 5�   2   8!   .1�5�   6   �� $ ActualWidth�6�    6>   �� *FindAncestor+" ��6�   �� 5�   6   $ ActualHeight�6�    6>   �� *FindAncestor+" ��6�   5�   3   5�   +   ��5�   &   
� 5�   *   	brush��$" Absolute=�6M   $	# 200Q�6d   $	$ 200Q�6r   % 5�   .   `� 5�   2   8!  .1�5�   6   �� $$ (fw:PointerTracker.RootObject)�6�    6>   �� *FindAncestor+" ��6�   �� 5�   6    6>   �� *FindAncestor+" ���� 5�   6   $" (fw:PointerTracker.Position)�6�    6>   �� *FindAncestor+" ��6�   5�   3   & 5�   .   `� 5�   2   8!  .1�5�   6   �� $$ (fw:PointerTracker.RootObject)�6�    6>   �� *FindAncestor+" ��6�   �� 5�   6    6>   �� *FindAncestor+" ���� 5�   6   $" (fw:PointerTracker.Position)�6�    6>   �� *FindAncestor+" ��6�   5�   3   .��5�   .   � $' Transparent��6;   $( 0Q�6O   � 5�   .   
offset��$	' Red��6K   $	( 0.5Q�6W   � 5�   .   $' Transparent��6;   $( 1Q�6O   5�   +   5�   #   5�      5�      �� 5�      #��z��5�   !   ��5�   !   Z�  5�   !   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�._�5�      �� $) contentPresenter��6/   |�.  #��z��5�   /   #��z��5�   /   #��z��5�   /   ��. #* z* 5�   /   5�      � 5�      $+ border��6   .+�5�      �� $ borderMouseOver��6%   #��z��5�   %   #��z��5�   %    5�   %   ��  �� *FindAncestor+$ ToggleButtonL�$&  (fw:RevealElement.BorderOpacity)� 5�   %   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)��� 5�      #��z��6%   #��z��5�   %   , 5�   %     $ White��$	 100Q�$	 1.0Q� 5�   %   ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�5�      5�      - 5�      P� 5�      . �@J�IsMouseOver/ . . �5�      �� $0 
background��6%    5�   %   ��  �� *FindAncestor+$ ToggleButtonL�$, &(fw:RevealElement.MouseOverBackground)� � ���� 5�      $0 contentPresenter��6%    5�   %   ��  �� *FindAncestor+$ ToggleButtonL�$, &(fw:RevealElement.MouseOverForeground)� � ���� 5�      $0 borderMouseOver��6%    5�   %   ��  �� *FindAncestor+$ ToggleButtonL�$/ )(fw:RevealElement.MouseOverBorderOpacity)� �@J�Opacity�� 5�       �@�Cursor$
 Hand��67   5�      P� 5�      . � ��/ . . �5�      �� $0 pressTintLayer��6%    � y�$ Visible=�6W   �� 5�      $0 borderMouseOver��6%    5   %   ��  �� *FindAncestor+$ ToggleButtonL�$+ %(fw:RevealElement.PressBorderOpacity)� �@J�Opacity5     P� 5     . �@d�	IsChecked$
/ TrueY�67   . �5     �� $0 pressTintLayer��6%    � y�$ Visible=�6W   �� 5     $0 borderMouseOver��6%    5  %   ��  �� *FindAncestor+$ ToggleButtonL�$+ %(fw:RevealElement.PressBorderOpacity)� �@J�Opacity�� 5      � �� 5  "   �� 5  &   $$��/Images/bluetooth_selected.png��6,   $��UniformToFill=�6T   5
     5     P� 5     . �@d�	IsChecked$/ FalseY�67   . �5     ��  � �� 5  "   �� 5  &   $#��/Images/bluetooth_default.png��6,   $��UniformToFill=�6S   5     5     5     5     5     5     