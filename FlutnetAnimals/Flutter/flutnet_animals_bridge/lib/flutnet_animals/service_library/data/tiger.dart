// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/tiger.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'tiger.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Tiger extends Animal {

	Tiger({
		this.clawLenght,
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

	@JsonKey(name: "ClawLenght", nullable: false)
	final double clawLenght;


	factory Tiger.fromJson(Map<dynamic, dynamic> json) => _$TigerFromJson(json);

	Map<String, dynamic> toJson() => _$TigerToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Tiger Function(Map<String, dynamic>)> 	_typeToTiger = {
		'FlutnetAnimals.ServiceLibrary.Data.Tiger, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Tiger.fromJson(json),
	};


	/// Dynamic deserialization
	factory Tiger.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Tiger, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToTiger.containsKey(typeKey)
			 ? 	_typeToTiger[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	Tiger copyWith({
		double clawLenght,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Tiger(
		clawLenght: clawLenght ?? this.clawLenght,
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
