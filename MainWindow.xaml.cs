using Microsoft.WindowsAPICodePack.Dialogs;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace C_sharp_3_practicheskaya
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static bool repeatt;
        public static List<string> list = new();
        public static List<string> random_list = new();
        public MainWindow()
        {


            InitializeComponent();
            
        }
        private void open_Click(object sender, RoutedEventArgs e)
        {

            listbox.Items.Clear();
            CommonOpenFileDialog dialog = new() { IsFolderPicker = true };
            CommonFileDialogResult result = dialog.ShowDialog();
            if (result == CommonFileDialogResult.Ok)
            {
                string[] files = Directory.GetFiles(dialog.FileName);
                
                Regex regex = new Regex(@"\w*\.mp3");
                foreach (string file in files)
                {
                    if (regex.IsMatch(file))
                    {
                        listbox.Items.Add(regex.Match(file).Value);
                        list.Add(file);
                    }
                }

            }
            
            media.Source = new Uri(list[0]);
            listbox.SelectedIndex = 0;
            media.Play();
            Thread.Sleep(1000);

        }
        private void play_Click(object sender, RoutedEventArgs e)
        {
            media.Play();
        }

        private void pause_Click(object sender, RoutedEventArgs e)
        {
            media.Pause();
        }

        private void repeat_Click(object sender, RoutedEventArgs e)
        {
            
            slider.Value = 0;
            media.Source = new Uri(list[listbox.SelectedIndex]);
            
            if(slider.Maximum == media.NaturalDuration.TimeSpan.Ticks)
            {
                repeat_Click(sender,e);
            }
        }   


        private void listbox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            media.Source = new Uri(list[listbox.SelectedIndex]);
        }

        private void next_Click(object sender, RoutedEventArgs e)
        {
            listbox.SelectedIndex += 1;
            media.Source = new Uri(list[listbox.SelectedIndex]);
        }

        private void previous_Click(object sender, RoutedEventArgs e)
        {
            listbox.SelectedIndex -= 1;
            media.Source = new Uri(list[listbox.SelectedIndex]);
        }

        private void slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            media.Position = new TimeSpan(Convert.ToInt64(slider.Value));
        }
        private void media_MediaOpened(object sender, RoutedEventArgs e)
        {
            slider.Maximum = media.NaturalDuration.TimeSpan.Ticks;
        }

        private void randomize_Click(object sender, RoutedEventArgs e)
        {
            foreach (string i in list)
            {
                random_list.Add(i);
            }
            random_list.Sort();
            Random rand = new Random();
            int randomic = rand.Next(random_list.Count);
           
            media.Source = new Uri(random_list[randomic]);
        }
    }
}
