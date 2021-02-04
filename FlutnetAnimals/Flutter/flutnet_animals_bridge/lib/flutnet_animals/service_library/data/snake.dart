// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/snake.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'snake.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Snake extends Animal {

	Snake({
		this.venomLevel,
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

	@JsonKey(name: "VenomLevel", nullable: false)
	final int venomLevel;


	factory Snake.fromJson(Map<dynamic, dynamic> json) => _$SnakeFromJson(json);

	Map<String, dynamic> toJson() => _$SnakeToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Snake Function(Map<String, dynamic>)> 	_typeToSnake = {
		'FlutnetAnimals.ServiceLibrary.Data.Snake, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Snake.fromJson(json),
	};


	/// Dynamic deserialization
	factory Snake.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Snake, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToSnake.containsKey(typeKey)
			 ? 	_typeToSnake[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	Snake copyWith({
		int venomLevel,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Snake(
		venomLevel: venomLevel ?? this.venomLevel,
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
