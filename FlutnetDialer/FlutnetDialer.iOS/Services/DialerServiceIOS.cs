using FlutnetDialer.ServiceLibrary;
using Foundation;
using UIKit;

namespace FlutnetDialer.Services
{
    public class DialerServiceIOS : IDialerService
    {
        public void OpenDialer(string phoneNumber)
        {

            NSUrl uri = NSUrl.FromString($"tel://{phoneNumber}");

            if (UIApplication.SharedApplication.CanOpenUrl(uri))
            {
                UIApplication.SharedApplication.OpenUrl(uri);
            }
        }
    }
}
