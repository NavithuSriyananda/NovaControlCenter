   M S B A M L   `   `   `  ���� D  @FluentWPF, Version=0.8.0.6, Culture=neutral, PublicKeyToken=nullP6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPFSourceChord.FluentWPF  fAclr-namespace:SourceChord.FluentWPF.Animations;assembly=FluentWPF SourceChord.FluentWPF.Animations  fAclr-namespace:SourceChord.FluentWPF.Converters;assembly=FluentWPF SourceChord.FluentWPF.Converters  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0895    /SourceChord.FluentWPF.RelativePositionConverter   relativePositionConverter>   8SourceChord.FluentWPF.Converters.HeightToRadiusConverter  HeightToRadiusConverter4   .SourceChord.FluentWPF.Converters.RectConverter  RectConverter # Display_ToggleButtonRevealStyle  �� 
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
TargetName�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     =fw6clr-namespace:SourceChord.FluentWPF;assembly=FluentWPF  O	animationAclr-namespace:SourceChord.FluentWPF.Animations;assembly=FluentWPF  P
convertersAclr-namespace:SourceChord.FluentWPF.Converters;assembly=FluentWPF  %�  &	        &	      &	 
     &	      7  7   7          �� "  d�.���  �@�OverridesDefaultStyle . ��  � ��# �  ��  � �� �#000000��  � ��# �  ��  � ��$ 2q���  � ��$ Center=���  � ��$ Center=���  �@J�SnapsToDevicePixels . ��  �@�UseLayoutRounding . ��  �@ MouseOverForeground# �  ��  �@ MouseOverBackground �#000000��  �@ MouseOverBorderOpacity$	 0.5Q���  �@ PressBorderOpacity$	 0.5Q���  �@ BorderRadius$ 10Q���  �@ PressTintBrush# �  ��  � �� �� " d�.R��    CommonStates��.   
Normal��. �� .��W� $ (UIElement.Opacity)�$ backgroundBorder��$		 0.0X�$
 	0:0:0.600D�   $ EaseOut=�W� $ (UIElement.Opacity)�$ 
pressLight��$	 0X�$
 	0:0:0.100D�   $ EaseOut=�  	MouseOver��. �� .��W� $ (UIElement.Opacity)�$ backgroundBorder��$		 0.5X�$
 	0:0:0.600D�   $ EaseOut=�W� $ (UIElement.Opacity)�$ 
pressLight��$	 0X�$
 	0:0:0.200D�   $ EaseOut=�W� $# (RadialGradientBrush.RadiusX)�$ brush��$		 200X�$
 	0:0:0.200D� 	  $ 	EaseInOut=�W� $# (RadialGradientBrush.RadiusY)�$ brush��$		 200X�$
 	0:0:0.200D� 	  $ 	EaseInOut=�  Pressed��. �� .��W� $ (UIElement.Opacity)�$ backgroundBorder��$	 1X�$
 	0:0:0.600D�   $ EaseOut=�W� $ (UIElement.Opacity)�$ 
pressLight��$	 1X�$
 	0:0:0.100D�   $ EaseOut=�W� $ (UIElement.Opacity)�$ 
pressLight��$	 0X�$ 	0:0:0.150X�$
 	0:0:1.500D�   $ EaseOut=�W� $# (RadialGradientBrush.RadiusX)�$ brush��$	 100X�$	 50X�$
 	0:0:0.100D�   $ EaseOut=�W� $# (RadialGradientBrush.RadiusX)�$ brush��$		 200X�$ 	0:0:0.150X�$
 	0:0:1.500D� 	  $ 	EaseInOut=�W� $# (RadialGradientBrush.RadiusY)�$ brush��$	 100X�$	 50X�$
 	0:0:0.100D�   $ EaseOut=�W� $# (RadialGradientBrush.RadiusY)�$ brush��$		 200X�$ 	0:0:0.150X�$
 	0:0:1.500D� 	  $ 	EaseInOut=�W� $ Offset�$ offset��$	 0X�$
 	0:0:0.000D� 	  $ 	EaseInOut=�W� $ Offset�$ offset��$ 0X�$		 0.8X�$ 	0:0:0.150X�$
 	0:0:1.500D� 	  $ EaseOut=�W� $ Opacity�$ brush��$	 0X�$ 	0:0:0.200X�$
 	0:0:2.000D� 	  $ 	EaseInOut=�  Disabled��. �� .��
  $ (TextElement.Foreground)�$ contentPresenter��$
 	0:0:0.100D� .   �� $ 	#FF838383�� 	  $ 	EaseInOut=�W� $ Opacity�$ border��$	 0X�$
 	0:0:0.100D� .   	  $ 	EaseInOut=�.+��� $ 
background��#��z�� ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)��� $ pressTintLayer��$y�Hidden=�����  �� *FindAncestor+$ ToggleButtonL�$' !(fw:RevealElement.PressTintBrush)� ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)��� $ backgroundBorder��$ 0Q� ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�._�� }�. .+��� $ mouseoverLight����  $ White��$	 300Q�$	 0.2Q� ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)��� $ 
pressLight�� ��  ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)� ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�  `� 8!   .1��� $ ActualWidth� �� *FindAncestor+" ���� $ ActualHeight� �� *FindAncestor+" ����
� 	brush��$" Absolute=�$	# 200Q�$	$ 200Q�% `� 8!  .1��� $$ (fw:PointerTracker.RootObject)� �� *FindAncestor+" ����  �� *FindAncestor+" ���� $" (fw:PointerTracker.Position)� �� *FindAncestor+" ��& `� 8!  .1��� $$ (fw:PointerTracker.RootObject)� �� *FindAncestor+" ����  �� *FindAncestor+" ���� $" (fw:PointerTracker.Position)� �� *FindAncestor+" ��.��� $' Transparent��$( 0Q�� 
offset��$	' Red��$	( 0.5Q�� $' Transparent��$( 1Q��� #��z����Z�  ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�._��� $) contentPresenter��|�.  #��z��#��z��#��z����. #* z* � $+ border��.+��� $ borderMouseOver��#��z��#��z�� ��  �� *FindAncestor+$ ToggleButtonL�$&  (fw:RevealElement.BorderOpacity)� ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)��� #��z��#��z��,   $ White��$	 100Q�$	 1.0Q� ��  �� *FindAncestor+$ ToggleButtonL�$% (fw:RevealElement.BorderRadius)�- P� . �@J�IsMouseOver/ . . ��� $0 
background�� ��  �� *FindAncestor+$ ToggleButtonL�$, &(fw:RevealElement.MouseOverBackground)� � ���� $0 contentPresenter�� ��  �� *FindAncestor+$ ToggleButtonL�$, &(fw:RevealElement.MouseOverForeground)� � ���� $0 borderMouseOver�� ��  �� *FindAncestor+$ ToggleButtonL�$/ )(fw:RevealElement.MouseOverBorderOpacity)� �@J�Opacity��  �@�Cursor$
 Hand��P� . � ��/ . . ��� $0 pressTintLayer�� � y�$ Visible=��� $0 borderMouseOver�� ��  �� *FindAncestor+$ ToggleButtonL�$+ %(fw:RevealElement.PressBorderOpacity)� �@J�OpacityP� . �@d�	IsChecked$
/ TrueY�. ��� $0 pressTintLayer�� � y�$ Visible=��� $0 borderMouseOver�� ��  �� *FindAncestor+$ ToggleButtonL�$+ %(fw:RevealElement.PressBorderOpacity)� �@J�Opacity��  � �� �� $"��/Images/display_selected.png��$��UniformToFill=�P� . �@d�	IsChecked$/ FalseY�. ���  � �� �� $!��/Images/display_default.png��$��UniformToFill=�