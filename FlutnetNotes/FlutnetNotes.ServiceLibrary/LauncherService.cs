using System;
using System.Threading.Tasks;
using Flutnet.ServiceModel;
using Xamarin.Essentials;

namespace FlutnetNotes.ServiceLibrary
{
    /// <summary>
    /// Custom Flutnet error that will be propagated to Flutter in case of errors
    /// </summary>
    public class LauncherOperationError : PlatformOperationException
    {
        public LauncherOperationError(string message) : base(message) {}
    }

    /// <summary>
    /// Service to launch a Browser URL or Share some Info
    /// </summary>
    [PlatformService]
    public class LauncherService
    {
        [PlatformOperation(IosMainThreadRequired = true,AndroidMainThreadRequired = true)]
        public async Task OpenBrowser(string uri)
        {
            try
            {
                await Browser.OpenAsync(uri, BrowserLaunchMode.SystemPreferred);
            }
            catch(Exception ex)
            {
                // Send error to Flutter
                throw new LauncherOperationError(ex.Message);
            }
            
        }

        [PlatformOperation(IosMainThreadRequired = true, AndroidMainThreadRequired = true)]
        public async Task ShareText(string title,string text)
        {
            await Share.RequestAsync(new ShareTextRequest
            {
                Text = text,
                Title = title,
            });
        }

    }
}
