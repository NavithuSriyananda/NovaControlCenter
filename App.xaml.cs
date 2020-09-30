using Hardcodet.Wpf.TaskbarNotification;
using System;
using System.Diagnostics;
using System.Timers;
using System.Windows;

namespace Control_Center
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private TaskbarIcon notifyIcon;
        private Timer timer;
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            timer = new Timer(500);
            timer.Elapsed += Timer_Elapsed;
            timer.Start();

            notifyIcon = (TaskbarIcon)FindResource("NotifyIcon");

            Application.Current.MainWindow = new MainWindow() { ShowInTaskbar = false, Visibility = Visibility.Hidden, MaxWidth = 0, MaxHeight = 0 };
            Application.Current.MainWindow.Show();
            Application.Current.MainWindow.Close();
            Application.Current.MainWindow = null;

        }

        private void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            string procName = Process.GetCurrentProcess().ProcessName;

            Process[] processes = Process.GetProcessesByName(procName);
            if (processes.Length > 1)
            {
                Environment.Exit(0);
            }
            else
            {
                timer.Stop();
                timer.Dispose();
            }
        }

        protected override void OnExit(ExitEventArgs e)
        {
            notifyIcon.Dispose(); //the icon would clean up automatically, but this is cleaner
            base.OnExit(e);
        }




    }
}
