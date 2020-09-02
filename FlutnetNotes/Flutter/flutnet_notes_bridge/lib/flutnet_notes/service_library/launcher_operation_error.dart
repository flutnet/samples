// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/flutnet/service_model/platform_operation_exception.dart';

part 'launcher_operation_error.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class LauncherOperationError extends PlatformOperationException {

	LauncherOperationError({
		String message,
	}) : super(
					message: message,
				);


	factory LauncherOperationError.fromJson(Map<dynamic, dynamic> json) => _$LauncherOperationErrorFromJson(json);

	Map<String, dynamic> toJson() => _$LauncherOperationErrorToJson(this);


}
