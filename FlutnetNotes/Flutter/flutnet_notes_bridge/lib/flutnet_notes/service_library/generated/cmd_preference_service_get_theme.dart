// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_preference_service_get_theme.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_preference_service_get_theme.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdPreferenceServiceGetTheme {

	CmdPreferenceServiceGetTheme();


	factory CmdPreferenceServiceGetTheme.fromJson(Map<dynamic, dynamic> json) => _$CmdPreferenceServiceGetThemeFromJson(json);

	Map<String, dynamic> toJson() => _$CmdPreferenceServiceGetThemeToJson(this);

}
