// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/launcher_operation_error.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/flutnet/service_model/platform_operation_exception.dart';

part 'launcher_operation_error.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class LauncherOperationError extends PlatformOperationException {

	LauncherOperationError({
		String message,
	}) : super(
					message: message,
				);


	factory LauncherOperationError.fromJson(Map<dynamic, dynamic> json) => _$LauncherOperationErrorFromJson(json);

	Map<String, dynamic> toJson() => _$LauncherOperationErrorToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, LauncherOperationError Function(Map<String, dynamic>)> 	_typeToLauncherOperationError = {
		'FlutnetNotes.ServiceLibrary.LauncherOperationError, FlutnetNotes.ServiceLibrary': (Map<String, dynamic> json) => LauncherOperationError.fromJson(json),
	};


	/// Dynamic deserialization
	factory LauncherOperationError.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetNotes.ServiceLibrary.LauncherOperationError, FlutnetNotes.ServiceLibrary';
			var fromJson = 	_typeToLauncherOperationError.containsKey(typeKey)
			 ? 	_typeToLauncherOperationError[typeKey] 
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
