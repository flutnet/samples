using Android.App;
using Android.OS;
using Android.Views;
using Android.Runtime;
using Android.Content.PM;
using Flutnet.Interop.Embedding.Android;

namespace FlutnetFlare
{
    [
        Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true,
            // FLUTTER ACTIVITY SETUP
            HardwareAccelerated = true,
            WindowSoftInputMode = SoftInput.AdjustResize,
            ConfigurationChanges = ConfigChanges.Orientation | ConfigChanges.KeyboardHidden | ConfigChanges.Keyboard |
                                   ConfigChanges.ScreenSize | ConfigChanges.Locale |
                                   ConfigChanges.LayoutDirection | ConfigChanges.FontScale | ConfigChanges.ScreenLayout |
                                   ConfigChanges.Density | ConfigChanges.UiMode
        )
    ]
    public class MainActivity : FlutterActivity
    {
        /// <summary>
        /// Configure the specific flutter engine id, so we reuse the same engine.
        /// </summary>
        public override string CachedEngineId => MainApplication.FlutterEngineId;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

    }
}