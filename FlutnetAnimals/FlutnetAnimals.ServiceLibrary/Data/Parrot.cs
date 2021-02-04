using System;
using Flutnet.ServiceModel;

namespace FlutnetAnimals.ServiceLibrary.Data
{
    [PlatformData]
    public class Parrot : Animal
    {
        public int BeakLenght { get; set; } 
    }
}
