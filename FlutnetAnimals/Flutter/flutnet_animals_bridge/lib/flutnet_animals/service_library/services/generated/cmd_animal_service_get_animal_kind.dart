// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/cmd_animal_service_get_animal_kind.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';

part 'cmd_animal_service_get_animal_kind.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdAnimalServiceGetAnimalKind extends Object {

	CmdAnimalServiceGetAnimalKind({
		this.animal,
	});

	@JsonKey(name: "Animal", nullable: true)
	final Animal animal;


	factory CmdAnimalServiceGetAnimalKind.fromJson(Map<dynamic, dynamic> json) => _$CmdAnimalServiceGetAnimalKindFromJson(json);

	Map<String, dynamic> toJson() => _$CmdAnimalServiceGetAnimalKindToJson(this);



}
