// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/parrot.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'parrot.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Parrot extends Animal {

	Parrot({
		this.beakLenght,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) : super(
					name: name,
					birthday: birthday,
					image: image,
					weight: weight,
					height: height,
				);

	@JsonKey(name: "BeakLenght", nullable: false)
	final int beakLenght;


	factory Parrot.fromJson(Map<dynamic, dynamic> json) => _$ParrotFromJson(json);

	Map<String, dynamic> toJson() => _$ParrotToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Parrot Function(Map<String, dynamic>)> 	_typeToParrot = {
		'FlutnetAnimals.ServiceLibrary.Data.Parrot, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Parrot.fromJson(json),
	};


	/// Dynamic deserialization
	factory Parrot.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Parrot, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToParrot.containsKey(typeKey)
			 ? 	_typeToParrot[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	Parrot copyWith({
		int beakLenght,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Parrot(
		beakLenght: beakLenght ?? this.beakLenght,
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
