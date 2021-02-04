// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/butterfly.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'butterfly.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Butterfly extends Animal {

	Butterfly({
		this.antennaLenght,
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

	@JsonKey(name: "AntennaLenght", nullable: false)
	final double antennaLenght;


	factory Butterfly.fromJson(Map<dynamic, dynamic> json) => _$ButterflyFromJson(json);

	Map<String, dynamic> toJson() => _$ButterflyToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Butterfly Function(Map<String, dynamic>)> 	_typeToButterfly = {
		'FlutnetAnimals.ServiceLibrary.Data.Butterfly, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Butterfly.fromJson(json),
	};


	/// Dynamic deserialization
	factory Butterfly.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Butterfly, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToButterfly.containsKey(typeKey)
			 ? 	_typeToButterfly[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	Butterfly copyWith({
		double antennaLenght,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Butterfly(
		antennaLenght: antennaLenght ?? this.antennaLenght,
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
