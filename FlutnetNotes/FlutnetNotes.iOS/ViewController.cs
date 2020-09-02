using CoreGraphics;
using System;
using UIKit;
using Flutnet;
using Flutnet.Interop;
using FlutnetNotes.ServiceLibrary;
using System.IO;
//using Flutnet.PluginInterop; // Call if flutter use plugins

namespace FlutnetNotes
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

            //
            // Launcher Service
            //
            FlutnetRuntime.RegisterPlatformService(new LauncherService(), "launcher_service");

            //
            // Preference Service
            //
            FlutnetRuntime.RegisterPlatformService(new PreferenceService(), "preference_service");

            //
            // Notes Database
            //
            NoteDatabase noteDatabase = new NoteDatabase(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Notes.db3"));

            FlutnetRuntime.RegisterPlatformService(noteDatabase, "note_database");


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