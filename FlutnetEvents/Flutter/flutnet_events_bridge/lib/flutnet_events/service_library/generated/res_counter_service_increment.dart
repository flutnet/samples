// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_counter_service_increment.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResCounterServiceIncrement {

	ResCounterServiceIncrement();


	factory ResCounterServiceIncrement.fromJson(Map<dynamic, dynamic> json) => _$ResCounterServiceIncrementFromJson(json);

	Map<String, dynamic> toJson() => _$ResCounterServiceIncrementToJson(this);

}
