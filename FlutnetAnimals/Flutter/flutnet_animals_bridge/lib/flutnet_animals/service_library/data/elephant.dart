// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/elephant.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'elephant.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Elephant extends Animal {

	Elephant({
		this.trunkLenght,
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

	@JsonKey(name: "TrunkLenght", nullable: false)
	final double trunkLenght;


	factory Elephant.fromJson(Map<dynamic, dynamic> json) => _$ElephantFromJson(json);

	Map<String, dynamic> toJson() => _$ElephantToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Elephant Function(Map<String, dynamic>)> 	_typeToElephant = {
		'FlutnetAnimals.ServiceLibrary.Data.Elephant, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Elephant.fromJson(json),
	};


	/// Dynamic deserialization
	factory Elephant.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Elephant, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToElephant.containsKey(typeKey)
			 ? 	_typeToElephant[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	Elephant copyWith({
		double trunkLenght,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Elephant(
		trunkLenght: trunkLenght ?? this.trunkLenght,
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
