using System;
using Flutnet.ServiceModel;

namespace FlutnetAnimals.ServiceLibrary.Data
{
    [PlatformData]
    public class Snake : Animal
    {
        public int VenomLevel { get; set; }
    }
}
