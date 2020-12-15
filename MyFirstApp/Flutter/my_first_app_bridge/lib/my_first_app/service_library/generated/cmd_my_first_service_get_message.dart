// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:my_first_app_bridge/my_first_app/service_library/generated/cmd_my_first_service_get_message.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_my_first_service_get_message.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdMyFirstServiceGetMessage {

	CmdMyFirstServiceGetMessage();


	factory CmdMyFirstServiceGetMessage.fromJson(Map<dynamic, dynamic> json) => _$CmdMyFirstServiceGetMessageFromJson(json);

	Map<String, dynamic> toJson() => _$CmdMyFirstServiceGetMessageToJson(this);

}
