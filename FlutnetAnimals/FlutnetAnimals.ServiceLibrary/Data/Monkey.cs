using System;
using Flutnet.ServiceModel;

namespace FlutnetAnimals.ServiceLibrary.Data
{
    [PlatformData]
    public class Monkey : Animal
    {
        public int QILevel { get; set; }
    }
}
