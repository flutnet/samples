// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_counter_service_increment.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdCounterServiceIncrement {

	CmdCounterServiceIncrement();


	factory CmdCounterServiceIncrement.fromJson(Map<dynamic, dynamic> json) => _$CmdCounterServiceIncrementFromJson(json);

	Map<String, dynamic> toJson() => _$CmdCounterServiceIncrementToJson(this);

}
