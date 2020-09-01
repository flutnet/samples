using CoreGraphics;
using System;
using UIKit;
using Flutnet;
using Flutnet.Interop;
using FlutnetFlare.ServiceLibrary;
//using Flutnet.PluginInterop; // Call if flutter use plugins

namespace FlutnetFlare
{
    public partial class ViewController : FlutterViewController
    {
		
		FlutnetBridge _bridge;
		
        public ViewController(IntPtr handle) : base(handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();		
            // Perform any additional Flutner setup after loading the view.
			// The view have loaded its FlutterEngine -> this.Engine.

            // Enable plugins used in flutter module
			//GeneratedPluginRegistrant.Register(this.Engine);
			
            FlutnetRuntime.Init("TRIAL-APP-KEY");
            FlutnetRuntime.RegisterPlatformService(new Service1(), "my_service");

#if (DEBUG)
            _bridge = new FlutnetBridge(this.Engine, FlutnetBridgeMode.PlatformChannel);
#else
            _bridge = new FlutnetBridge(this.Engine);
#endif
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}