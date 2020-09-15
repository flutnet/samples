using System;
using System.Collections.Generic;
using System.Linq;
using Flutnet.ServiceModel;
using FlutnetContactList.ServiceLibrary.Data;

namespace FlutnetContactList.ServiceLibrary.Service
{
    [PlatformService]
    public class ContactService
    {
        private readonly List<Contact> _contactsTemplate = new List<Contact>()
        {
            new Contact()
            {
                Name = "Adams",
                Lastname = "Wilson",
                Image = Utils.ResourceReader.ReadByteResources(typeof(ContactService),"Profile1.PNG"),
                PhoneNumber = "+1-202-555-0177",
                NationId = 0,
            },
            new Contact()
            {
                Name = "Usman",
                Lastname = "Cox",
                Image = Utils.ResourceReader.ReadByteResources(typeof(ContactService),"Profile2.PNG"),
                PhoneNumber = "+1-202-555-0177",
                NationId = 2,
            },
            new Contact()
            {
                Name = "Mason",
                Lastname = "Miller",
                Image = Utils.ResourceReader.ReadByteResources(typeof(ContactService),"Profile3.PNG"),
                PhoneNumber = "+1-202-555-0177",
                NationId = 3,
            },
            new Contact()
            {
                Name = "Consuelo",
                Lastname = "Gonzalez",
                Image = Utils.ResourceReader.ReadByteResources(typeof(ContactService),"Profile4.PNG"),
                PhoneNumber = "+1-202-555-0184",
                NationId = 6,
            },
            new Contact()
            {
                Name = "Frank",
                Lastname = "Brown",
                Image = Utils.ResourceReader.ReadByteResources(typeof(ContactService),"Profile5.PNG"),
                PhoneNumber = "+1-202-555-0184",
                NationId = 5,
            },
            new Contact()
            {
                Name = "Evans",
                Lastname = "Davis",
                Image = Utils.ResourceReader.ReadByteResources(typeof(ContactService),"Profile6.PNG"),
                PhoneNumber = "+1-202-555-0184",
                NationId = 10,
            }
        };

        private readonly Random _random = new Random();
        private readonly List<Contact> _contacts = new List<Contact>();

        // Load a fake contact list
        void _loadData()
        {
            for (int i = 0; i < 100; i++)
            {
                int randomIndex = _random.Next(0, _contactsTemplate.Count - 1);
                Contact randomContact = _contactsTemplate[randomIndex];

                _contacts.Add(randomContact);
            }
        }

        public ContactService()
        {
            _loadData();
        }

        [PlatformOperation]
        public IEnumerable<Contact> GetContacts(string name, string lastname, int startIndex = 0, int limit = 1000)
        {
            return _contacts.Where(c =>
                       (string.IsNullOrEmpty(name) || c.Name == name) &&
                       (string.IsNullOrEmpty(lastname) || c.Lastname == lastname)
                )
                .Skip(startIndex < 0 ? 0 : startIndex)
                .Take(limit < 0 ? 0 : limit);
        }

        [PlatformOperation]
        public ContactQueryResult QueryContacts(string name, string lastname, int startIndex = 0, int limit = 1000)
        {

            List<Contact> contacts = _contacts.Where(c =>
                    (string.IsNullOrEmpty(name) || c.Name == name) &&
                    (string.IsNullOrEmpty(lastname) || c.Lastname == lastname)
                )
                .Skip(startIndex < 0 ? 0 : startIndex)
                .Take(limit < 0 ? 0 : limit).ToList();

            int count = _contacts.Count(c => (string.IsNullOrEmpty(name) || c.Name == name) &&
                                             (string.IsNullOrEmpty(lastname) || c.Lastname == lastname));

            return new ContactQueryResult()
            {
                Contacts = contacts,
                TotalCount = count
            };

        }

    }
}
