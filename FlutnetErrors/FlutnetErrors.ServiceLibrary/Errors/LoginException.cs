
using Flutnet.ServiceModel;
using FlutnetErrors.ServiceLibrary.Data;

namespace FlutnetErrors.ServiceLibrary.Errors
{
    public class LoginException : PlatformOperationException
    {
        public LoginErrors Error { get; set; }
    }
}
