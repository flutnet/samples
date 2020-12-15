// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_events_bridge/flutnet_events/service_library/generated/cmd_counter_service_get_value.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_counter_service_get_value.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdCounterServiceGetValue {

	CmdCounterServiceGetValue();


	factory CmdCounterServiceGetValue.fromJson(Map<dynamic, dynamic> json) => _$CmdCounterServiceGetValueFromJson(json);

	Map<String, dynamic> toJson() => _$CmdCounterServiceGetValueToJson(this);

}
