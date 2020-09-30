using System;
using System.Management.Automation;
using System.Management.Automation.Runspaces;

namespace Control_Center.Class
{
    public class Brightness
    {
        public int getBrightness()
        {
            //$monitors = Get-WmiObject -Namespace root\wmi -Class WmiMonitorBrightness
            //foreach ($monitor in $monitors){
            //$brightness = New-Object -TypeName PSObject -Property @{
            //CurrentLevel = $monitor.CurrentBrightness
            //MaxLevel = $($monitor.Level | sort | select -Last 1)
            //}
            //$brightness
            //}
            try
            {
                Runspace runspace = RunspaceFactory.CreateRunspace();
                runspace.Open();
                using (PowerShell PowerShellInstance = PowerShell.Create())
                {
                    string script = @"$monitors = Get-WmiObject -Namespace root\wmi -Class WmiMonitorBrightness
                                            $brightness = New-Object -TypeName PSObject -Property @{
                                            CurrentLevel = $monitors.CurrentBrightness                                       
                                }
                                $brightness | ft -HideTableHeaders";

                    foreach (string str in PowerShellInstance.AddScript(script).AddCommand("Out-String").Invoke<string>())
                    {
                        runspace.Close();
                        runspace.Dispose();
                        return int.Parse(str.Trim());
                    }
                }
                return 0;
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public void setBrightness(double value)
        {
            string script = "$brightness = " + value + @"
                                    $delay = 0
                                    $myMonitor = Get-WmiObject -Namespace root\wmi -Class WmiMonitorBrightnessMethods
                                    $myMonitor.wmisetbrightness($delay, $brightness)";
            //delay can set screen brightness after specific time of seconds
            try
            {
                using (Runspace runspace = RunspaceFactory.CreateRunspace())
                {
                    runspace.Open();
                    using (PowerShell PowerShellInstance = PowerShell.Create())
                    {
                        PowerShellInstance.AddScript(script);
                        PowerShellInstance.Invoke();
                    }
                    runspace.Close();
                }
            }
            catch (Exception)
            {

            }
        }
    }
}
