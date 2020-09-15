using Flutnet.ServiceModel;

namespace FlutnetDialer.ServiceLibrary
{
    [PlatformService]
    public interface IDialerService
    {
        /// <summary>
        /// Open dialer:
        /// 1. IOS platform MUST call the open URL in the UI thread.
        /// 2. Android can call the operation in background.
        /// </summary>
        /// <param name="phoneNumber"></param>
        [PlatformOperation(IosMainThreadRequired = true, AndroidMainThreadRequired = false)]
        void OpenDialer(string phoneNumber);
    }
}