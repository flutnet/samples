using System;
using Flutnet.ServiceModel;

namespace FlutnetAnimals.ServiceLibrary.Data
{
    [PlatformData]
    public class Elephant : Animal
    {
        public float TrunkLenght { get; set; }
    }
}
