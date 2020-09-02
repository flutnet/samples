using System;
using System.IO;
using Android.App;
using Android.Runtime;
using Flutnet;
using Flutnet.Interop.Embedding.Engine;
using Flutnet.Interop.Embedding.Engine.Dart;
//using Flutnet.Interop.Plugins; // Call if flutter use plugins
using FlutnetNotes.ServiceLibrary;

namespace FlutnetNotes
{
#if DEBUG
    [Application(Debuggable = true)]
#else
    [Application(Debuggable = false)]
#endif
    public class MainApplication : Application
    {
        FlutnetBridge _bridge;

		public static readonly string FlutterEngineId = "my_flutter_engine";
		
        public MainApplication(IntPtr javaReference, JniHandleOwnership transfer) : base(javaReference, transfer)
        {
        }

        public override void OnCreate()
        {
            base.OnCreate();

            // Instantiate a FlutterEngine.
            FlutterEngine flutterEngine = new FlutterEngine(this);

            // Start executing Dart code to pre-warm the FlutterEngine.
            flutterEngine.DartExecutor.ExecuteDartEntrypoint(
              DartExecutor.DartEntrypoint.CreateDefault()
            );

            // Cache the FlutterEngine to be used by FlutterActivity.
            FlutterEngineCache
              .Instance
              .Put(FlutterEngineId, flutterEngine);

			// Call if flutter use plugins
			//GeneratedPluginRegistrant.RegisterWith(flutterEngine);
			  
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



			// Start the bridge
#if (DEBUG)
            _bridge = new FlutnetBridge(flutterEngine, this, FlutnetBridgeMode.PlatformChannel);
#else
            _bridge = new FlutnetBridge(flutterEngine, this);
#endif
        }

    }
}