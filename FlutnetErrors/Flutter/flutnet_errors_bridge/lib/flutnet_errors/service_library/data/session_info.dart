// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_errors_bridge/flutnet_errors/service_library/data/session_info.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_errors_bridge/converters.dart';

part 'session_info.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class SessionInfo extends Object {

	SessionInfo({
		this.token,
		this.lastLogin,
	});

	@JsonKey(name: "Token", nullable: true)
	final String token;

	@JsonKey(name: "LastLogin")
	@DateTimeConverter()
	final DateTime lastLogin;


	factory SessionInfo.fromJson(Map<dynamic, dynamic> json) => _$SessionInfoFromJson(json);

	Map<String, dynamic> toJson() => _$SessionInfoToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, SessionInfo Function(Map<String, dynamic>)> 	_typeToSessionInfo = {
		'FlutnetErrors.ServiceLibrary.Data.SessionInfo, FlutnetErrors.ServiceLibrary': (Map<String, dynamic> json) => SessionInfo.fromJson(json),
	};


	/// Dynamic deserialization
	factory SessionInfo.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetErrors.ServiceLibrary.Data.SessionInfo, FlutnetErrors.ServiceLibrary';
			var fromJson = 	_typeToSessionInfo.containsKey(typeKey)
			 ? 	_typeToSessionInfo[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}

	/// Mapping between Dart Type and NET types
	static final Map<Type, String> 	_sessionInfoToType = {
		SessionInfo().runtimeType : "FlutnetErrors.ServiceLibrary.Data.SessionInfo, FlutnetErrors.ServiceLibrary",
	};


	/// Dynamic serialization
	Map<String, dynamic> toJsonDynamic() {

		try {
			// Get the NET Type from the Dart runtime type
			final String typeKey = 
				_sessionInfoToType.containsKey(this.runtimeType)
			 ? 	_sessionInfoToType[this.runtimeType] 
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
	SessionInfo copyWith({
		String token,
		DateTime lastLogin,
	}) {
	return SessionInfo(
		token: token ?? this.token,
		lastLogin: lastLogin ?? this.lastLogin,
	);
	}


}
