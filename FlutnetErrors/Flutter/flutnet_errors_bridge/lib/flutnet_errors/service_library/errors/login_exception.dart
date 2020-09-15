// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/data/login_errors.dart';
import 'package:flutnet_errors_bridge/flutnet/service_model/platform_operation_exception.dart';

part 'login_exception.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class LoginException extends PlatformOperationException {

	LoginException({
		this.error,
		String message,
	}) : super(
					message: message,
				);

	@JsonKey(name: "Error", nullable: false)
	final LoginErrors error;


	factory LoginException.fromJson(Map<dynamic, dynamic> json) => _$LoginExceptionFromJson(json);

	Map<String, dynamic> toJson() => _$LoginExceptionToJson(this);


}
