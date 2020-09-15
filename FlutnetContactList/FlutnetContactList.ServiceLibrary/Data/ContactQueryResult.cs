using System.Collections.Generic;
using Flutnet.ServiceModel;

namespace FlutnetContactList.ServiceLibrary.Data
{
    [PlatformData]
    public class ContactQueryResult
    {
        public int TotalCount { get; set; }

        public IEnumerable<Contact> Contacts { get; set; }

    }
}
