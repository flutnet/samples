// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/monkey.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'monkey.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Monkey extends Animal {

	Monkey({
		this.qILevel,
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

	@JsonKey(name: "QILevel", nullable: false)
	final int qILevel;


	factory Monkey.fromJson(Map<dynamic, dynamic> json) => _$MonkeyFromJson(json);

	Map<String, dynamic> toJson() => _$MonkeyToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Monkey Function(Map<String, dynamic>)> 	_typeToMonkey = {
		'FlutnetAnimals.ServiceLibrary.Data.Monkey, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Monkey.fromJson(json),
	};


	/// Dynamic deserialization
	factory Monkey.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Monkey, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToMonkey.containsKey(typeKey)
			 ? 	_typeToMonkey[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	Monkey copyWith({
		int qILevel,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Monkey(
		qILevel: qILevel ?? this.qILevel,
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
