using System;
using UIKit;
using Flutnet;
using Flutnet.Interop;
using FlutnetContactList.ServiceLibrary.Service;
using System.Threading.Tasks;

namespace FlutnetContactList
{
    public partial class ViewController : FlutterViewController
    {
        FlutnetBridge _bridge;
        bool _initialized;

        public ViewController(IntPtr handle) : base(handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }

        public override async void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            if (_initialized)
                return;

            // Connect Flutter plugins (uncomment only if Flutter module uses plugins)
            //FlutnetContactList.PluginInterop.GeneratedPluginRegistrant.Register(this.Engine);

            try
            {
                //
			    // Init the runtime using the application key (generated from the flutnet console)
                //
                FlutnetRuntime.Init("TRIAL-APP-KEY");
                
                // 
				// Register the service on the flutnet runtime
				//  
                FlutnetRuntime.RegisterPlatformService(new ContactService(), "contact_service");

                // Initialize the bridge
#if (DEBUG)
                _bridge = new FlutnetBridge(this.Engine, FlutnetBridgeMode.PlatformChannel);
#else
                _bridge = new FlutnetBridge(this.Engine);
#endif
                _initialized = true;
            }
            catch (Exception e)
            {
                var taskCompletionSource = new TaskCompletionSource<bool>();
                var alert = UIAlertController.Create("Fatal Error", e.Message, UIAlertControllerStyle.Alert);
                alert.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, a => taskCompletionSource.SetResult(true)));
                this.PresentViewController(alert, true, null);
                await taskCompletionSource.Task;
                throw;
            }
        }
    }
}