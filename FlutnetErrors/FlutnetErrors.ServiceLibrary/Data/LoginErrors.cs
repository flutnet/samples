using Flutnet.ServiceModel;

namespace FlutnetErrors.ServiceLibrary.Data
{
    [PlatformData]
    public enum LoginErrors
    {
        InvalidUsername,
        InvalidPassword,
        InvalidUsernameAndPassword,
    }
}
