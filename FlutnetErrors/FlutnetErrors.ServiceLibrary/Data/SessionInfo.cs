using System;
using Flutnet.ServiceModel;

namespace FlutnetErrors.ServiceLibrary.Data
{
    [PlatformData]
    public class SessionInfo
    {
        public string Token { get; set; }

        public DateTime LastLogin { get; set; }
    }
}
