// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_launcher_service_share_text.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdLauncherServiceShareText {

	CmdLauncherServiceShareText({
		this.title,
		this.text,
	});

	@JsonKey(name: "Title", nullable: true)
	final String title;

	@JsonKey(name: "Text", nullable: true)
	final String text;


	factory CmdLauncherServiceShareText.fromJson(Map<dynamic, dynamic> json) => _$CmdLauncherServiceShareTextFromJson(json);

	Map<String, dynamic> toJson() => _$CmdLauncherServiceShareTextToJson(this);

}
