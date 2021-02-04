// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_contact_list_bridge/flutnet/service_model/platform_operation_exception.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_contact_list_bridge/flutnet/data/flutnet_exception.dart';

part 'platform_operation_exception.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class PlatformOperationException extends Object implements Exception {

	PlatformOperationException({
		this.message,
	});

	@JsonKey(name: "Message", nullable: true)
	final String message;


	factory PlatformOperationException.fromJson(Map<dynamic, dynamic> json) => _$PlatformOperationExceptionFromJson(json);

	Map<String, dynamic> toJson() => _$PlatformOperationExceptionToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, PlatformOperationException Function(Map<String, dynamic>)> 	_typeToPlatformOperationException = {
		'Flutnet.Data.FlutnetException, Flutnet': (Map<String, dynamic> json) => FlutnetException.fromJson(json),
		'Flutnet.ServiceModel.PlatformOperationException, Flutnet.ServiceModel': (Map<String, dynamic> json) => PlatformOperationException.fromJson(json),
	};


	/// Dynamic deserialization
	factory PlatformOperationException.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'Flutnet.ServiceModel.PlatformOperationException, Flutnet.ServiceModel';
			var fromJson = 	_typeToPlatformOperationException.containsKey(typeKey)
			 ? 	_typeToPlatformOperationException[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}

	/// Mapping between Dart Type and NET types
	static final Map<Type, String> 	_platformOperationExceptionToType = {
		FlutnetException().runtimeType : "Flutnet.Data.FlutnetException, Flutnet",
		PlatformOperationException().runtimeType : "Flutnet.ServiceModel.PlatformOperationException, Flutnet.ServiceModel",
	};


	/// Dynamic serialization
	Map<String, dynamic> toJsonDynamic() {

		try {
			// Get the NET Type from the Dart runtime type
			final String typeKey = 
				_platformOperationExceptionToType.containsKey(this.runtimeType)
			 ? 	_platformOperationExceptionToType[this.runtimeType] 
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



	@override
	String toString() {
		return toJson().toString();
	}


}
