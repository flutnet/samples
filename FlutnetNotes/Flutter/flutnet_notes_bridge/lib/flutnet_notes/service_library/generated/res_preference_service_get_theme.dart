// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_preference_service_get_theme.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResPreferenceServiceGetTheme {

	ResPreferenceServiceGetTheme({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final String returnValue;


	factory ResPreferenceServiceGetTheme.fromJson(Map<dynamic, dynamic> json) => _$ResPreferenceServiceGetThemeFromJson(json);

	Map<String, dynamic> toJson() => _$ResPreferenceServiceGetThemeToJson(this);

}
