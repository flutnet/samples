// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_video_player_bridge/flutnet/data/flutnet_exception.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_video_player_bridge/flutnet/data/flutnet_error_code.dart';
import 'package:flutnet_video_player_bridge/flutnet/service_model/platform_operation_exception.dart';

part 'flutnet_exception.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class FlutnetException extends PlatformOperationException {

	FlutnetException({
		this.code,
		String message,
	}) : super(
					message: message,
				);

	@JsonKey(name: "Code", nullable: false)
	final FlutnetErrorCode code;


	factory FlutnetException.fromJson(Map<dynamic, dynamic> json) => _$FlutnetExceptionFromJson(json);

	Map<String, dynamic> toJson() => _$FlutnetExceptionToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, FlutnetException Function(Map<String, dynamic>)> 	_typeToFlutnetException = {
		'Flutnet.Data.FlutnetException, Flutnet': (Map<String, dynamic> json) => FlutnetException.fromJson(json),
	};


	/// Dynamic deserialization
	factory FlutnetException.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'Flutnet.Data.FlutnetException, Flutnet';
			var fromJson = 	_typeToFlutnetException.containsKey(typeKey)
			 ? 	_typeToFlutnetException[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}



	@override
	String toString() {
		return toJson().toString();
	}


}
