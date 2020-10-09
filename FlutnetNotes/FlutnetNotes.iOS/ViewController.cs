using System;
using UIKit;
using Flutnet;
using Flutnet.Interop;
using FlutnetNotes.ServiceLibrary;
using System.Threading.Tasks;
using System.IO;

namespace FlutnetNotes
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
            //FlutnetNotes.PluginInterop.GeneratedPluginRegistrant.Register(this.Engine);

            try
            {
                //
			    // Init the runtime using the application key (generated from the flutnet console)
                //
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