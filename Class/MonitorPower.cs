namespace Control_Center.Class
{
    public class MonitorPower
    {
        private const int HWND_BROADCAST = 0xFFFF;//the message is sent to all    

        //top-level windows in the system    

        private const int SC_MONITORPOWER = 0xF170;

        private const int WM_SYSCOMMAND = 0x112;


        private const int MONITOR_ON = -1;

        private const int MONITOR_OFF = 2;

        private const int MONITOR_STANBY = 1;


        [System.Runtime.InteropServices.DllImport("user32.dll")]
        private static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);


        //SendMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_OFF);
        public void SetOff()
        {
            SendMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_OFF);
        }
        public void SetOn()
        {
            SendMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_ON);
        }
        public void SetStandby()
        {
            SendMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_STANBY);
        }
    }
}
