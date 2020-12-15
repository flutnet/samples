// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_events_bridge/flutnet_events/service_library/generated/res_counter_service_decrement.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_counter_service_decrement.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResCounterServiceDecrement {

	ResCounterServiceDecrement();


	factory ResCounterServiceDecrement.fromJson(Map<dynamic, dynamic> json) => _$ResCounterServiceDecrementFromJson(json);

	Map<String, dynamic> toJson() => _$ResCounterServiceDecrementToJson(this);

}
