﻿using Foundation;
using UIKit;
using Flutnet.Interop;

namespace FlutnetFlare
{
    [Register("AppDelegate")]
    public class AppDelegate : FlutterAppDelegate
    {
        [Export("application:didFinishLaunchingWithOptions:")]
        public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
        {
            return base.FinishedLaunching(application, launchOptions);
        }
    }
}