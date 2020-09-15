// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_errors_bridge/converters.dart';

part 'session_info.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class SessionInfo {

	SessionInfo({
		this.token,
		this.lastLogin,
	});

	@JsonKey(name: "Token", nullable: true)
	final String token;

	@JsonKey(name: "LastLogin")
	@DateTimeConverter()
	final DateTime lastLogin;


	factory SessionInfo.fromJson(Map<dynamic, dynamic> json) => _$SessionInfoFromJson(json);

	Map<String, dynamic> toJson() => _$SessionInfoToJson(this);

}
