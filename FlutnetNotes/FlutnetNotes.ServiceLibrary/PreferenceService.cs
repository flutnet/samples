using System;
using Flutnet.ServiceModel;
using Xamarin.Essentials;

namespace FlutnetNotes.ServiceLibrary
{
    /// <summary>
    /// Platform Service used to save application settings
    /// </summary>
    [PlatformService]
    public class PreferenceService
    {
        [PlatformOperation]
        public string GetTheme()
        {
            return Preferences.Get("theme", string.Empty);
        }

        [PlatformOperation]
        public void SetTheme(string theme)
        {
            Preferences.Set("theme", theme);
        }
    }
}
