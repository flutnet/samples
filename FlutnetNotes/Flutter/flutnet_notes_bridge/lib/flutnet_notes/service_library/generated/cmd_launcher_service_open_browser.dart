// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_launcher_service_open_browser.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_launcher_service_open_browser.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdLauncherServiceOpenBrowser extends Object {

	CmdLauncherServiceOpenBrowser({
		this.uri,
	});

	@JsonKey(name: "Uri", nullable: true)
	final String uri;


	factory CmdLauncherServiceOpenBrowser.fromJson(Map<dynamic, dynamic> json) => _$CmdLauncherServiceOpenBrowserFromJson(json);

	Map<String, dynamic> toJson() => _$CmdLauncherServiceOpenBrowserToJson(this);



}
