using System;
using Flutnet.ServiceModel;

namespace FlutnetAnimals.ServiceLibrary.Data
{
    [PlatformData]
    public class Rhino : Animal
    {
        public float HornLenght { get; set; }
    }
}
