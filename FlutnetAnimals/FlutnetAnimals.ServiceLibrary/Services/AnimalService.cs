using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Flutnet.ServiceModel;
using FlutnetAnimals.ServiceLibrary.Data;

namespace FlutnetAnimals.ServiceLibrary.Services
{
    [PlatformService]
    public class AnimalService
    {
        [PlatformOperation]
        public async Task<List<Animal>> GetAnimals()
        {

            // Fake load calculation
            await Task.Delay(100);


            List<Animal> animals = new List<Animal>();

            // butterfly
            Butterfly butterfly = new Butterfly()
            {
                Birthday = new DateTime(2000, 1, 1),
                Name = "Flyppy",
                height = 10,
                weight = 5,
                Image = Utils.ResourceReader.ReadByteResources(typeof(Animal), "butterfly.jpg"),
                AntennaLenght = 57,
            };
            animals.Add(butterfly);

            // elephant
            Elephant elephant = new Elephant()
            {
                Birthday = new DateTime(2007, 11, 7),
                Name = "Floppy",
                height = 250,
                weight = 990,
                Image = Utils.ResourceReader.ReadByteResources(typeof(Animal), "elephant.jpg"),
                TrunkLenght = 150,
            };
            animals.Add(elephant);

            // monkey
            Monkey monkey = new Monkey()
            {
                Birthday = new DateTime(2007, 11, 7),
                Name = "Gingle",
                height = 25,
                weight = 35,
                Image = Utils.ResourceReader.ReadByteResources(typeof(Animal), "monkey.jpg"),
                QILevel = 103,
            };
            animals.Add(monkey);

            // parrot
            Parrot parrot = new Parrot()
            {
                Birthday = new DateTime(2004, 7, 10),
                Name = "Pappa",
                height = 13,
                weight = 16,
                Image = Utils.ResourceReader.ReadByteResources(typeof(Animal), "parrot.jpg"),
                BeakLenght = 22,
            };
            animals.Add(parrot);

            // rhino
            Rhino rhino = new Rhino()
            {
                Birthday = new DateTime(2001, 5, 22),
                Name = "Rino",
                height = 170,
                weight = 643,
                Image = Utils.ResourceReader.ReadByteResources(typeof(Animal), "rhino.jpg"),
                HornLenght = 45,
            };
            animals.Add(rhino);

            // snake
            Snake snake = new Snake()
            {
                Birthday = new DateTime(2011, 6, 15),
                Name = "Biss",
                height = 180,
                weight = 25,
                Image = Utils.ResourceReader.ReadByteResources(typeof(Animal), "snake.jpg"),
                VenomLevel = 10,
            };
            animals.Add(snake);

            // tiger
            Tiger tiger = new Tiger()
            {
                Birthday = new DateTime(2000, 1, 1),
                Name = "Lea",
                height = 80,
                weight = 100,
                Image = Utils.ResourceReader.ReadByteResources(typeof(Animal), "tiger.jpg"),
                ClawLenght = 46,
            };
            animals.Add(tiger);

            // Return all the animals
            return animals;

        }

        [PlatformOperation]
        public string GetAnimalKind(Animal animal)
        {

            if(animal is Butterfly)
            {
                return "Butterfly";
            }
            if(animal is Elephant)
            {
                return "Elephant";
            }
            if (animal is Monkey)
            {
                return "Monkey";
            }
            if (animal is Parrot)
            {
                return "Parrot";
            }
            if (animal is Rhino)
            {
                return "Rhino";
            }
            if (animal is Snake)
            {
                return "Snake";
            }
            if (animal is Tiger)
            {
                return "Tiger";
            }

            return "?";
        }

    }
}
