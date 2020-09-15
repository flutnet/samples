using Flutnet.ServiceModel;

namespace MyFirstApp.ServiceLibrary
{
    // This service class will be exposed to Flutter
    [PlatformService]
    public class MyFirstService
    {

        // This operation will be exposed to Flutter
        [PlatformOperation]
        public string GetMessage()
        {
            return "My First App";
        }
    }
}