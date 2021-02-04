// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_errors_bridge/flutnet_errors/service_library/errors/login_exception.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/data/login_errors.dart';
import 'package:flutnet_errors_bridge/flutnet/service_model/platform_operation_exception.dart';

part 'login_exception.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class LoginException extends PlatformOperationException {

	LoginException({
		this.error,
		String message,
	}) : super(
					message: message,
				);

	@JsonKey(name: "Error", nullable: false)
	final LoginErrors error;


	factory LoginException.fromJson(Map<dynamic, dynamic> json) => _$LoginExceptionFromJson(json);

	Map<String, dynamic> toJson() => _$LoginExceptionToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, LoginException Function(Map<String, dynamic>)> 	_typeToLoginException = {
		'FlutnetErrors.ServiceLibrary.Errors.LoginException, FlutnetErrors.ServiceLibrary': (Map<String, dynamic> json) => LoginException.fromJson(json),
	};


	/// Dynamic deserialization
	factory LoginException.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetErrors.ServiceLibrary.Errors.LoginException, FlutnetErrors.ServiceLibrary';
			var fromJson = 	_typeToLoginException.containsKey(typeKey)
			 ? 	_typeToLoginException[typeKey] 
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
