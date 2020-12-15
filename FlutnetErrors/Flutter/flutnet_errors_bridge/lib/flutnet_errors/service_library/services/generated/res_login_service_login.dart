// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_errors_bridge/flutnet_errors/service_library/services/generated/res_login_service_login.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/data/session_info.dart';

part 'res_login_service_login.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResLoginServiceLogin {

	ResLoginServiceLogin({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final SessionInfo returnValue;


	factory ResLoginServiceLogin.fromJson(Map<dynamic, dynamic> json) => _$ResLoginServiceLoginFromJson(json);

	Map<String, dynamic> toJson() => _$ResLoginServiceLoginToJson(this);

}
