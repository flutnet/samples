// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:my_first_app_bridge/my_first_app/service_library/generated/res_my_first_service_get_message.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_my_first_service_get_message.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResMyFirstServiceGetMessage {

	ResMyFirstServiceGetMessage({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final String returnValue;


	factory ResMyFirstServiceGetMessage.fromJson(Map<dynamic, dynamic> json) => _$ResMyFirstServiceGetMessageFromJson(json);

	Map<String, dynamic> toJson() => _$ResMyFirstServiceGetMessageToJson(this);

}
