// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_events_bridge/flutnet_events/service_library/counter_changed_args.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_events_bridge/system/event_args.dart';

part 'counter_changed_args.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CounterChangedArgs extends EventArgs {

	CounterChangedArgs({
		this.value,
	});

	@JsonKey(name: "Value", nullable: false)
	final int value;


	factory CounterChangedArgs.fromJson(Map<dynamic, dynamic> json) => _$CounterChangedArgsFromJson(json);

	Map<String, dynamic> toJson() => _$CounterChangedArgsToJson(this);

	/// Mapping between NET types and Dart Type
	static final Map<String, CounterChangedArgs Function(Map<String, dynamic>)> 	_typeToCounterChangedArgs = {
		'FlutnetEvents.ServiceLibrary.CounterChangedArgs, FlutnetEvents.ServiceLibrary': (Map<String, dynamic> json) => CounterChangedArgs.fromJson(json),
	};


	/// Dynamic deserialization
	factory CounterChangedArgs.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetEvents.ServiceLibrary.CounterChangedArgs, FlutnetEvents.ServiceLibrary';
			var fromJson = 	_typeToCounterChangedArgs.containsKey(typeKey)
			 ? 	_typeToCounterChangedArgs[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}


	// Copy with method for the class
	CounterChangedArgs copyWith({
		int value,
	}) {
	return CounterChangedArgs(
		value: value ?? this.value,
	);
	}


}
