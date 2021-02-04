// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/rhino.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/converters.dart';

part 'rhino.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Rhino extends Animal {

	Rhino({
		this.hornLenght,
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

	@JsonKey(name: "HornLenght", nullable: false)
	final double hornLenght;


	factory Rhino.fromJson(Map<dynamic, dynamic> json) => _$RhinoFromJson(json);

	Map<String, dynamic> toJson() => _$RhinoToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, Rhino Function(Map<String, dynamic>)> 	_typeToRhino = {
		'FlutnetAnimals.ServiceLibrary.Data.Rhino, FlutnetAnimals.ServiceLibrary': (Map<String, dynamic> json) => Rhino.fromJson(json),
	};


	/// Dynamic deserialization
	factory Rhino.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetAnimals.ServiceLibrary.Data.Rhino, FlutnetAnimals.ServiceLibrary';
			var fromJson = 	_typeToRhino.containsKey(typeKey)
			 ? 	_typeToRhino[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	Rhino copyWith({
		double hornLenght,
		String name,
		DateTime birthday,
		Uint8List image,
		double weight,
		double height,
	}) {
	return Rhino(
		hornLenght: hornLenght ?? this.hornLenght,
		name: name ?? this.name,
		birthday: birthday ?? this.birthday,
		image: image ?? this.image,
		weight: weight ?? this.weight,
		height: height ?? this.height,
	);
	}


}
