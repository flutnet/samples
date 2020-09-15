using System;
using Flutnet.ServiceModel;

namespace FlutnetContactList.ServiceLibrary.Data
{
    [PlatformData]
    public class Contact
    {
        public string Name { get; set; }

        public string Lastname { get; set; }

        public string PhoneNumber { get; set; }

        // enum are not supported
        public int NationId { get; set; }

        public byte[] Image { get; set; }

    }
}
