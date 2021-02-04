// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/res_animal_service_get_animal_kind.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_animal_service_get_animal_kind.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResAnimalServiceGetAnimalKind extends Object {

	ResAnimalServiceGetAnimalKind({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final String returnValue;


	factory ResAnimalServiceGetAnimalKind.fromJson(Map<dynamic, dynamic> json) => _$ResAnimalServiceGetAnimalKindFromJson(json);

	Map<String, dynamic> toJson() => _$ResAnimalServiceGetAnimalKindToJson(this);



}
