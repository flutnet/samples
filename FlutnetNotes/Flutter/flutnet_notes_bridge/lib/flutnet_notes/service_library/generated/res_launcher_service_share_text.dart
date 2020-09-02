// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_launcher_service_share_text.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResLauncherServiceShareText {

	ResLauncherServiceShareText();


	factory ResLauncherServiceShareText.fromJson(Map<dynamic, dynamic> json) => _$ResLauncherServiceShareTextFromJson(json);

	Map<String, dynamic> toJson() => _$ResLauncherServiceShareTextToJson(this);

}
