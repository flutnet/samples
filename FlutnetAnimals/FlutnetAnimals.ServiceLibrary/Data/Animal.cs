using System;
using Flutnet.ServiceModel;

namespace FlutnetAnimals.ServiceLibrary.Data
{
    [PlatformData]
    public class Animal
    {

        public string Name { get; set; }

        public DateTime Birthday { get; set; }

        public byte[] Image { get; set; }

        public float weight { get; set; }

        public float height { get; set; }

    }
}
