using System.Windows;
using System.Windows.Input;

namespace Control_Center.Class
{
    public class NotifyIconViewModel
    {

        /// <summary>
        /// Shows a window, if none is already open.
        /// </summary>
        public ICommand ShowWindowCommand
        {
            get
            {
                return new DelegateCommand
                {
                    CanExecuteFunc = () => Application.Current.MainWindow == null,
                    CommandAction = () =>
                    {
                        Application.Current.MainWindow = new MainWindow();
                        Application.Current.MainWindow.Show();
                    }
                };
            }
        }

        /// <summary>
        /// Shows a window, if none is already open.
        /// Bring window to front, if window is open
        /// </summary>
        public ICommand DoubleClickCommand
        {
            get
            {
                return new DelegateCommand
                {
                    CommandAction = () =>
                    {
                        if (Application.Current.MainWindow == null)
                        {
                            Application.Current.MainWindow = new MainWindow();
                            Application.Current.MainWindow.Show();
                        }
                        else
                        {
                            Application.Current.MainWindow.WindowState = WindowState.Normal;
                        }
                    }
                };
            }
        }

        /// <summary>
        /// Hides the main window. This command is only enabled if a window is open.
        /// </summary>
        public ICommand HideWindowCommand
        {
            get
            {
                return new DelegateCommand
                {
                    CanExecuteFunc = () => Application.Current.MainWindow != null,
                    CommandAction = () => Application.Current.MainWindow.Close()
                };
            }
        }


        /// <summary>
        /// Shuts down the application.
        /// </summary>
        public ICommand ExitApplicationCommand
        {
            get
            {
                return new DelegateCommand { CommandAction = () => Application.Current.Shutdown() };
            }
        }
    }
}
