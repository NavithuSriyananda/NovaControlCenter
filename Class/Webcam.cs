using System;
using System.IO;
using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Threading.Tasks;
using System.Windows;

namespace Control_Center.Class
{
    public class Webcam
    {
        private static string path = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        private static string fullPath = path + "/Camera.txt";
        public void CreateFiles()
        {
            try
            {
                if (!File.Exists(fullPath))
                {
                    File.Create(fullPath).Close();
                }
            }
            catch (Exception)
            {
            }
        }

        public bool isEmpty()
        {
            try
            {
                using (StreamReader sr = File.OpenText(fullPath))
                {
                    string str = sr.ReadLine();
                    return (str == null ? true : false);

                }
            }
            catch (Exception)
            {
                return true;
            }
        }


        public async Task SaveCameraInstances()
        {
            try
            {
                Runspace Runspace = RunspaceFactory.CreateRunspace();
                Runspace.Open();

                using (PowerShell PowerShellInstance = PowerShell.Create())
                {
                    using (StreamWriter sw = File.AppendText(fullPath))
                    {
                        foreach (string str in PowerShellInstance.AddScript("Get-PnpDevice -Class 'Camera' | ft -wrap -autosize -HideTableHeaders instanceid").AddCommand("Out-String").Invoke<string>())
                        {
                            await sw.WriteLineAsync(str.Trim());
                        }
                    }
                }
                Runspace.Close();
            }
            catch (Exception)
            {
            }
        }
        public async Task DisableCameraInstances()
        {
            try
            {
                Runspace Runspace = RunspaceFactory.CreateRunspace();
                Runspace.Open();

                using (PowerShell PowerShellInstance = PowerShell.Create())
                {
                    using (StreamReader sr = File.OpenText(fullPath))
                    {
                        string str = await sr.ReadToEndAsync();
                        string[] cameras = str.Split(new char[0], StringSplitOptions.RemoveEmptyEntries);
                        foreach (string item in cameras)
                        {

                            string script = "Disable-PnpDevice -InstanceId \"" + item + "\" -confirm:$false";

                            Console.WriteLine(script);
                            PowerShellInstance.AddScript(script);
                            PowerShellInstance.Invoke();
                        }
                    }
                }
                Runspace.Close();
            }
            catch (Exception)
            {
            }
        }
        public async Task EnableCameraInstances()
        {
            try
            {
                Runspace Runspace = RunspaceFactory.CreateRunspace();
                Runspace.Open();
                using (PowerShell PowerShellInstance = PowerShell.Create())
                {
                    using (StreamReader sr = File.OpenText(fullPath))
                    {
                        string str = await sr.ReadToEndAsync();
                        string[] cameras = str.Split(new char[0], StringSplitOptions.RemoveEmptyEntries);

                        foreach (string item in cameras)
                        {
                            string script = "Enable-PnpDevice -InstanceId \"" + item + "\" -confirm:$false";
                            PowerShellInstance.AddScript(script);

                            PowerShellInstance.Invoke();
                        }
                    }
                }
                Runspace.Close();
                Runspace.Dispose();
                File.WriteAllText(fullPath, "");
            }
            catch (Exception)
            {
            }
        }
    }
}
