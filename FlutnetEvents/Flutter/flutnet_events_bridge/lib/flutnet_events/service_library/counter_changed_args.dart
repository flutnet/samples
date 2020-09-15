// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'counter_changed_args.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CounterChangedArgs {

	CounterChangedArgs({
		this.value,
	});

	@JsonKey(name: "Value", nullable: false)
	final int value;


	factory CounterChangedArgs.fromJson(Map<dynamic, dynamic> json) => _$CounterChangedArgsFromJson(json);

	Map<String, dynamic> toJson() => _$CounterChangedArgsToJson(this);

}
