// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/res_animal_service_get_animals.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';

part 'res_animal_service_get_animals.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResAnimalServiceGetAnimals extends Object {

	ResAnimalServiceGetAnimals({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final List<Animal> returnValue;


	factory ResAnimalServiceGetAnimals.fromJson(Map<dynamic, dynamic> json) => _$ResAnimalServiceGetAnimalsFromJson(json);

	Map<String, dynamic> toJson() => _$ResAnimalServiceGetAnimalsToJson(this);



}
