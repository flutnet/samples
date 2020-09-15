// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_login_service_login.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdLoginServiceLogin {

	CmdLoginServiceLogin({
		this.username,
		this.password,
		this.forceHandleError,
	});

	@JsonKey(name: "Username", nullable: true)
	final String username;

	@JsonKey(name: "Password", nullable: true)
	final String password;

	@JsonKey(name: "ForceHandleError", nullable: false)
	final bool forceHandleError;


	factory CmdLoginServiceLogin.fromJson(Map<dynamic, dynamic> json) => _$CmdLoginServiceLoginFromJson(json);

	Map<String, dynamic> toJson() => _$CmdLoginServiceLoginToJson(this);

}
