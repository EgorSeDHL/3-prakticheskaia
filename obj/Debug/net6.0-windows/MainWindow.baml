   M S B A M L   `   `   `  ????S  OC sharp 3 practicheskaya, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:C_sharp_3_practicheskayaC_sharp_3_practicheskaya  5   	   )    #C_sharp_3_practicheskaya.MainWindow   5   	   _ [MaterialDesignThemes.Wpf, Version=4.7.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:C_sharp_3_practicheskaya     5   	     ? Title$  Аудиоплеер??5	   	   $	??450??6   $	??800??6,   $	??450??6;   $	??800??6H   .??5
      ?  ? Cursor$  ??6    ? ColumnDefinitions 5   
   ?? 5      $??5* ?6   ?? 5      $??5* ?6   ?? 5      $??5* ?6   ?? 5      $??5* ?6   ?? 5      $??5* ?6   ?? 5      $??7* ?6   ?? 5      $??0* ?6    ? RowDefinitions 5   
   ?? 5      $	??50* ?6   ?? 5      $
??268* ?6   ?? 5      $	??49* ?6   ?? 5      $	??68* ?6   .+?5   
   ?? -   5         ??Name$ listbox??5      $??10,10,10,10q?5      $??6??6"   $??1??66   6C   ?? 5"   
   -   5         ??Name$
 open??5"      $	??Top=?5#      $??6??5$      $??
10,10,10,0q?5%       "  MaterialDesignRaisedDarkButton#??[  5&      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25??5'       ? ToolTip$7 1MaterialDesignRaisedDarkButton with Round Corners??5(      $??32??5)   ?   {?6   ?? *DataContext.ControlsEnabled+ ?? RelativeSource ?? *FindAncestor+	 ?? AncestorType
	 Window.??5*      ?? $??Выбрать папку??6   5+      ?? 5-   
   -   5        $ previous??5-        MaterialDesignIconButton#??[ 5.      $ MaterialDesignIconButton??5/       ( $MaterialDesignTextFieldBoxBackground#???  50      $??3??51   ?   $??Center=?6?   $??Center=?6?   $??48??6?   $??48??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
	 Window.??52      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 PreviousTitle=?6&   53      ?? 54   
   -   5        $
 play??54      #??[ 55      $ MaterialDesignIconButton??56      #???  57      $??1??58   ?   $??3??6?   $??Center=?6?   $??Center=?6?   $??48??6?   $??48??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
	 Window.??59        $

 Play=?6&   5:      ?? 5;   
   -   5        $ pause??5;      #??[ 5<      $ MaterialDesignIconButton??5=      #???  5>      $??3??5?   ?   $??2??6?   $??Center=?6?   $??Center=?6?   $??48??6?   $??48??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
	 Window.??5@        $
 Pause=?6&   5A      ?? 5B   
   -   5        $
 next??5B      #??[ 5C      $ MaterialDesignIconButton??5D      #???  5E      $??3??5F   ?   $??3??6?   $??Center=?6?   $??Center=?6?   $??48??6?   $??48??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
	 Window.??5G        $
 	NextTitle=?6&   5H      ?? 5I   
   -   5         ??Name$ repeat??5I       + 'MaterialDesignFilterChipPrimaryCheckBox#??[ 5J       d? 	IsChecked$ FalseY?5K      $??Repeat??5L      $??4??5M      $??3??6   $??Center=?6,   $??Center=?6G   $??48??6d   $	??104??6p   5N      ?? 5O   
   -   5        $ 	randomize??5O      #??[ 5P      $ MaterialDesignIconButton??5Q      #???  5R      $??5??5S   ?   $??3??6?   $??Center=?6?   $??Center=?6?   $??48??6?   $??48??6?   {?6   ?? *DataContext.ControlsEnabled+ ?? *FindAncestor+
	 Window.??5T        $
 Shuffle=?6&   5U      ?? 5W   
   -	   5         ??Name$ slider??5W      $??Center=?5X       ? Minimum$ 0Q?5Y      $??	10,0,10,0q?5Z      $??6??6"   $??2??66   $??20??6C   6O   r? 5]   
   -
   5         r?Name$ media??5]       r? LoadedBehavior$ Manual=?6&   $??	0,0,0,267q?6^   $??2??6q   5^      5_      