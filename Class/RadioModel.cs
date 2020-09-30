using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Windows.Devices.Radios;

namespace Control_Center.Class
{
    public class RadioModel : INotifyPropertyChanged
    {
        private Radio radio;
        private bool isEnabled;
        private System.Windows.Window parent;

        public RadioModel(Radio radio, System.Windows.Window parent)
        {
            this.radio = radio;
            // Controlling the mobile broadband radio requires a restricted capability.
            this.isEnabled = (radio.Kind != RadioKind.MobileBroadband);
            this.parent = parent;
            this.radio.StateChanged += Radio_StateChanged;
        }

        private void Radio_StateChanged(Radio sender, object args)
        {
            NotifyPropertyChanged("IsRadioOn");
        }

        public string Name
        {
            get
            {
                return this.radio.Name;
            }
        }

        public bool IsRadioOn
        {
            get
            {
                return this.radio.State == RadioState.On;
            }
            set
            {
                SetRadioState(value);
            }
        }

        public bool IsEnabled
        {
            get
            {
                return this.isEnabled;
            }
            set
            {
                this.isEnabled = value;
                NotifyPropertyChanged();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void NotifyPropertyChanged([CallerMemberName] string propertyName = "")
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        private async void SetRadioState(bool isRadioOn)
        {
            var radioState = isRadioOn ? RadioState.On : RadioState.Off;
            Disable();
            await this.radio.SetStateAsync(radioState);
            NotifyPropertyChanged("IsRadioOn");
            Enable();
        }

        private void Enable()
        {
            IsEnabled = true;
        }

        private void Disable()
        {
            IsEnabled = false;
        }
    }
}
