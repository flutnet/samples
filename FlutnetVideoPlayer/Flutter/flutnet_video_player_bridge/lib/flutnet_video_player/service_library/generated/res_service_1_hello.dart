// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_video_player_bridge/flutnet_video_player/service_library/generated/res_service_1_hello.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_service_1_hello.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResService1Hello extends Object {

	ResService1Hello({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final String returnValue;


	factory ResService1Hello.fromJson(Map<dynamic, dynamic> json) => _$ResService1HelloFromJson(json);

	Map<String, dynamic> toJson() => _$ResService1HelloToJson(this);



}
