import 'package:flutter/material.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/butterfly.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/elephant.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/monkey.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/parrot.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/rhino.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/snake.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/tiger.dart';

class AnimalItem extends StatelessWidget {
  final Animal animal;

  final void Function(Animal animal) onTap;

  AnimalItem(
    this.animal, {
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool animalHaveImage = animal.image != null;

    return ListTile(
      isThreeLine: true,
      onTap: () => onTap(animal),
      leading: CircleAvatar(
        backgroundImage: animalHaveImage ? MemoryImage(animal.image) : null,
        child: animalHaveImage == false
            ? ClipOval(
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
              )
            : null,
      ),
      title: Text(
        "${animal.name ?? '?'}, born in ${animal?.birthday?.year ?? '?'}-${animal?.birthday?.month ?? '?'}-${animal?.birthday?.day ?? '?'}",
      ),
      subtitle: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${animal.weight ?? '?'} Kg, ${animal.height ?? '?'} cm",
              ),
              _getSpecificInformations(this.animal),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getSpecificInformations(Animal animal) {
    String info = "???";

    if (animal is Butterfly) {
      info = "Antenna: ${animal.antennaLenght} cm";
    }

    if (animal is Elephant) {
      info = "Trunk: ${animal.trunkLenght} cm";
    }

    if (animal is Monkey) {
      info = "QI: ${animal.qILevel}";
    }

    if (animal is Parrot) {
      info = "Beak: ${animal.beakLenght} cm";
    }

    if (animal is Rhino) {
      info = "Horn: ${animal.hornLenght} cm";
    }

    if (animal is Snake) {
      info = "Venom: ${animal.venomLevel} Lv";
    }

    if (animal is Tiger) {
      info = "Claw: ${animal.clawLenght} cm";
    }

    return Text(info);
  }
}
