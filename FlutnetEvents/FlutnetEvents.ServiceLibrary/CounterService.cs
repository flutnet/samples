using System;
using Flutnet.ServiceModel;

namespace FlutnetEvents.ServiceLibrary
{
    [PlatformService]
    public class CounterService
    {
        [PlatformEvent]
        public event EventHandler<CounterChangedArgs> ValueChanged;

        // Current state
        private int _value = 0;

        [PlatformOperation]
        public int GetValue()
        {
            return _value;
        }

        [PlatformOperation]
        public void Increment()
        {
            _value++;
            // raise the event
            OnValueChanged(new CounterChangedArgs()
            {
                Value = _value
            });
        }

        [PlatformOperation]
        public void Decrement()
        {
            _value--;
            // raise the event
            OnValueChanged(new CounterChangedArgs()
            {
                Value = _value
            });
        }

        protected virtual void OnValueChanged(CounterChangedArgs e)
        {
            ValueChanged?.Invoke(this, e);
        }
    }
}
