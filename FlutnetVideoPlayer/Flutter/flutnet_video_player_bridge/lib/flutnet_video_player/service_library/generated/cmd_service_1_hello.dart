// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_video_player_bridge/flutnet_video_player/service_library/generated/cmd_service_1_hello.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_service_1_hello.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdService1Hello {

	CmdService1Hello({
		this.name,
	});

	@JsonKey(name: "Name", nullable: true)
	final String name;


	factory CmdService1Hello.fromJson(Map<dynamic, dynamic> json) => _$CmdService1HelloFromJson(json);

	Map<String, dynamic> toJson() => _$CmdService1HelloToJson(this);

}
