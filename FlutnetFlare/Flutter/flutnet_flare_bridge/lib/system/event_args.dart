// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_flare_bridge/system/event_args.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'event_args.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class EventArgs extends Object {

	EventArgs();


	factory EventArgs.fromJson(Map<dynamic, dynamic> json) => _$EventArgsFromJson(json);

	Map<String, dynamic> toJson() => _$EventArgsToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, EventArgs Function(Map<String, dynamic>)> 	_typeToEventArgs = {
		'System.EventArgs, System.Private.CoreLib': (Map<String, dynamic> json) => EventArgs.fromJson(json),
	};


	/// Dynamic deserialization
	factory EventArgs.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'System.EventArgs, System.Private.CoreLib';
			var fromJson = 	_typeToEventArgs.containsKey(typeKey)
			 ? 	_typeToEventArgs[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}

	/// Mapping between Dart Type and NET types
	static final Map<Type, String> 	_eventArgsToType = {
		EventArgs().runtimeType : "System.EventArgs, System.Private.CoreLib",
	};


	/// Dynamic serialization
	Map<String, dynamic> toJsonDynamic() {

		try {
			// Get the NET Type from the Dart runtime type
			final String typeKey = 
				_eventArgsToType.containsKey(this.runtimeType)
			 ? 	_eventArgsToType[this.runtimeType] 
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



}
