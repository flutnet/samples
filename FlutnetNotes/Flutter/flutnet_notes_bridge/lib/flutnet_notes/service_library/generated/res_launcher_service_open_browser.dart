// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_launcher_service_open_browser.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResLauncherServiceOpenBrowser {

	ResLauncherServiceOpenBrowser();


	factory ResLauncherServiceOpenBrowser.fromJson(Map<dynamic, dynamic> json) => _$ResLauncherServiceOpenBrowserFromJson(json);

	Map<String, dynamic> toJson() => _$ResLauncherServiceOpenBrowserToJson(this);

}
