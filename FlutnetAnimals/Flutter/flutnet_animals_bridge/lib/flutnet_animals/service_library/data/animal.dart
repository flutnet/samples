// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/butterfly.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/elephant.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/monkey.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/parrot.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/rhino.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/snake.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/tiger.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'animal.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Animal extends Object {

	Animal({
		this.name,
		this.birthday,
		this.image,
		this.weight,
		this.height,
	});

	@JsonKey(name: "Name", nullable: true)
	final String name;

	@JsonKey(name: "Birthday")
	@DateTimeConverter()
	final DateTime birthday;

	@JsonKey(name: "Image")
	@Uint8Converter()
	final Uint8List image;

	@JsonKey(name: "weight", nullable: false)
	final double weight;

	@JsonKey(name: "height", nullable: false)
	final double height;


	factory Animal.fromJson(Map<dynamic, dynamic> json) => _$AnimalFromJson(json);

	Map<String, dynamic> toJson() => _$AnimalToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Animal Function(Map<String, dynamic>)> 	_typeToAnimal = {
		'FlutnetAnimals.ServiceLibrary.Data.Animal, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Animal.fromJson(json),
		'FlutnetAnimals.ServiceLibrary.Data.Butterfly, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Butterfly.fromJson(json),
		'FlutnetAnimals.ServiceLibrary.Data.Elephant, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Elephant.fromJson(json),
		'FlutnetAnimals.ServiceLibrary.Data.Monkey, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Monkey.fromJson(json),
		'FlutnetAnimals.ServiceLibrary.Data.Parrot, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Parrot.fromJson(json),
		'FlutnetAnimals.ServiceLibrary.Data.Rhino, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Rhino.fromJson(json),
		'FlutnetAnimals.ServiceLibrary.Data.Snake, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Snake.fromJson(json),
		'FlutnetAnimals.ServiceLibrary.Data.Tiger, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Tiger.fromJson(json),
	};


	/// Dynamic deserialization
	factory Animal.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Animal, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToAnimal.containsKey(typeKey)
			 ? 	_typeToAnimal[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}

	/// Mapping between Dart Type and NET types
	static final Map<Type, String> 	_animalToType = {
		Animal().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Animal, FlutnetAnimals.ServiceLibrary",
		Butterfly().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Butterfly, FlutnetAnimals.ServiceLibrary",
		Elephant().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Elephant, FlutnetAnimals.ServiceLibrary",
		Monkey().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Monkey, FlutnetAnimals.ServiceLibrary",
		Parrot().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Parrot, FlutnetAnimals.ServiceLibrary",
		Rhino().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Rhino, FlutnetAnimals.ServiceLibrary",
		Snake().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Snake, FlutnetAnimals.ServiceLibrary",
		Tiger().runtimeType : "FlutnetAnimals.ServiceLibrary.Data.Tiger, FlutnetAnimals.ServiceLibrary",
	};


	/// Dynamic serialization
	Map<String, dynamic> toJsonDynamic() {

		try {
			// Get the NET Type from the Dart runtime type
			final String typeKey = 
				_animalToType.containsKey(this.runtimeType)
			 ? 	_animalToType[this.runtimeType] 
			 : null;

			/// Wrap the object with his NET type key
			final Map<String, dynamic> map = {
				'\$type' : typeKey,
			};
			map.addAll(this.toJson());
			return map;

		} catch (e) {
		  throw new Exception('Error during lib serialization process: ${this.runtimeType}');
		}
	}


	// Copy with method for the class
	Animal copyWith({
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Animal(
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
