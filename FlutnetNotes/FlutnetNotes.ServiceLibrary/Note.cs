using System;
using Flutnet.ServiceModel;
using SQLite;

namespace FlutnetNotes.ServiceLibrary
{
    [PlatformData]
    public class Note
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public bool IsImportant { get; set; }
        public DateTime Date { get; set; }
    }
}
