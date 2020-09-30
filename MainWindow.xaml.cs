using Control_Center.Class;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Security.Principal;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Interop;
using Windows.Devices.Radios;

namespace Control_Center
{
    internal enum AccentState
    {
        ACCENT_DISABLED = 0,
        ACCENT_ENABLE_GRADIENT = 1,
        ACCENT_ENABLE_TRANSPARENTGRADIENT = 2,
        ACCENT_ENABLE_BLURBEHIND = 3,
        ACCENT_INVALID_STATE = 4
    }

    [StructLayout(LayoutKind.Sequential)]
    internal struct AccentPolicy
    {
        public AccentState AccentState;
        public int AccentFlags;
        public int GradientColor;
        public int AnimationId;
    }

    [StructLayout(LayoutKind.Sequential)]
    internal struct WindowCompositionAttributeData
    {
        public WindowCompositionAttribute Attribute;
        public IntPtr Data;
        public int SizeOfData;
    }

    internal enum WindowCompositionAttribute
    {
        // ...
        WCA_ACCENT_POLICY = 19
        // ...
    }
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        [DllImport("user32.dll")]
        internal static extern int SetWindowCompositionAttribute(IntPtr hwnd, ref WindowCompositionAttributeData data);

        [DllImport("user32.dll")]
        private static extern bool SetCursorPos(int X, int Y);

        private MonitorPower MonitorPower;
        private Webcam PowershellFunctions;
        private Brightness brightness;

        [DllImport("user32.dll")]
        public static extern IntPtr SendMessageW(int hWnd, int Msg, int wParam, int lParam);
        public MainWindow()
        {
            InitializeComponent();
            this.Closing += MainWindow_Closing;
            DataContext = this;
            MonitorPower = new MonitorPower();

            PowershellFunctions = new Webcam();
            PowershellFunctions.CreateFiles();
            bool isEmpty = PowershellFunctions.isEmpty();
            btnWebcam.IsChecked = (isEmpty == true ? false : true);

            brightness = new Brightness();
            Task task1 = setRadios();
            MySlider.Value = brightness.getBrightness();
            txtBrightness.Text = MySlider.Value.ToString();
        }

        private void MainWindow_Closing(object sender, CancelEventArgs e)
        {
            GC.ReRegisterForFinalize(this);
        }


        public async Task setRadios()
        {
            IReadOnlyList<Radio> radios = await Radio.GetRadiosAsync();

            foreach (var radio in radios)
            {
                if (radio.Name.Equals("Wi-Fi"))
                {
                    WiFi_RadioSwitchList.Items.Add(new RadioModel(radio, this));
                }
                else if (radio.Name.Equals("Bluetooth"))
                {
                    Bluetooth_RadioSwitchList.Items.Add(new RadioModel(radio, this));
                }
            }
        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            EnableBlur();
        }

        internal void EnableBlur()
        {
            var windowHelper = new WindowInteropHelper(this);

            var accent = new AccentPolicy();
            accent.AccentState = AccentState.ACCENT_ENABLE_BLURBEHIND;

            var accentStructSize = Marshal.SizeOf(accent);

            var accentPtr = Marshal.AllocHGlobal(accentStructSize);
            Marshal.StructureToPtr(accent, accentPtr, false);

            var data = new WindowCompositionAttributeData();
            data.Attribute = WindowCompositionAttribute.WCA_ACCENT_POLICY;
            data.SizeOfData = accentStructSize;
            data.Data = accentPtr;

            SetWindowCompositionAttribute(windowHelper.Handle, ref data);

            Marshal.FreeHGlobal(accentPtr);
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void btnPower_Click(object sender, RoutedEventArgs e)
        {
            MonitorPower.SetOff();
            SetCursorPos(0, 0);
        }

        private void Window_MouseMove(object sender, MouseEventArgs e)
        {
            if (btnPower.IsChecked == true)
                btnPower.IsChecked = false;
            MonitorPower.SetOn();
        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            if (btnPower.IsChecked == true)
                btnPower.IsChecked = false;
            MonitorPower.SetOn();
        }
        private void btnWebcam_Click(object sender, RoutedEventArgs e)
        {
            var id = WindowsIdentity.GetCurrent();
            if (id.User == id.Owner)
            {
                try
                {
                    ProcessStartInfo info = new ProcessStartInfo();
                    info.Verb = "runas"; // we'll run our EXE as admin
                    info.UseShellExecute = true;
                    string localAppDataPath = Windows.ApplicationModel.Package.Current.InstalledLocation.Path;
                    info.FileName = localAppDataPath + @"/Nova Control Center/Nova Control Center.exe"; // path to the appExecutionAlias
                    Process.Start(info); // launch new elevated instance
                    App.Current.Shutdown(); // exit current instance
                }
                catch (Exception)
                {
                    if (btnWebcam.IsChecked == true)
                        btnWebcam.IsChecked = false;
                    else
                        btnWebcam.IsChecked = true;
                    MessageBox.Show("Please run as Administrator!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                if (btnWebcam.IsChecked == false)
                {
                    bool isEmpty = PowershellFunctions.isEmpty();
                    if (isEmpty == false)
                    {
                        Task task = PowershellFunctions.EnableCameraInstances();
                    }
                }
                else
                {
                    Task task1 = PowershellFunctions.SaveCameraInstances();
                    bool isEmpty = PowershellFunctions.isEmpty();
                    if (isEmpty == false)
                    {
                        Task task2 = PowershellFunctions.DisableCameraInstances();
                    }
                }
            }
        }

        private void MySlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            int newval = (int)e.NewValue;
            txtBrightness.Text = newval.ToString();
            brightness.setBrightness(e.NewValue);
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.MainWindow.Close();
        }
    }
}
