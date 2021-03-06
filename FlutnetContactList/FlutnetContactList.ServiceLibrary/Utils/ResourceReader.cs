﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;


namespace FlutnetContactList.ServiceLibrary.Utils
{
    internal static class ResourceReader
    {

        public static IEnumerable<string> ReadStringResourcesEachLine(Type assemblyType, string name)
        {
            var assembly = assemblyType.Assembly;

            string resourceName = assembly.GetManifestResourceNames()
                .SingleOrDefault(str => str.EndsWith(name));

            if (resourceName == null)
                yield return null;

            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
            using (StreamReader reader = new StreamReader(stream ?? throw new InvalidOperationException()))
            {
                string line = reader.ReadLine();
                yield return line;
            }
        }

        public static string ReadStringResources(Type assemblyType, string name)
        {
            var assembly = assemblyType.Assembly;

            string resourceName = assembly.GetManifestResourceNames()
                .SingleOrDefault(str => str.EndsWith(name));

            if (resourceName == null)
                return null;

            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
            using (StreamReader reader = new StreamReader(stream ?? throw new InvalidOperationException()))
            {
                string res = reader.ReadToEnd();
                return res;
            }
        }

        public static byte[] ReadByteResources(Type assemblyType, string name)
        {
            var assembly = assemblyType.Assembly;

            string resourceName = assembly.GetManifestResourceNames()
                .SingleOrDefault(str => str.EndsWith(name));

            if (resourceName == null)
                return null;

            using (Stream stream = assembly.GetManifestResourceStream(resourceName))
            {
                byte[] data = new byte[stream.Length];

                stream.Read(data, 0, (int)stream.Length);

                return data;
            }


        }

    }
}
