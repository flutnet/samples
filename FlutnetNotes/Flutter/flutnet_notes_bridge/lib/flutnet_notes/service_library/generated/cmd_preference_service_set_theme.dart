// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_preference_service_set_theme.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_preference_service_set_theme.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdPreferenceServiceSetTheme {

	CmdPreferenceServiceSetTheme({
		this.theme,
	});

	@JsonKey(name: "Theme", nullable: true)
	final String theme;


	factory CmdPreferenceServiceSetTheme.fromJson(Map<dynamic, dynamic> json) => _$CmdPreferenceServiceSetThemeFromJson(json);

	Map<String, dynamic> toJson() => _$CmdPreferenceServiceSetThemeToJson(this);

}
