
using System;
using Flutnet.ServiceModel;

namespace FlutnetEvents.ServiceLibrary
{
    [PlatformData]
    public class CounterChangedArgs : EventArgs
    {
        public int Value { get; set; }
    }
}
