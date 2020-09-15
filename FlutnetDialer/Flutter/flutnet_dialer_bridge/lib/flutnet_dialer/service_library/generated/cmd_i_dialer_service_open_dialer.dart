// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_i_dialer_service_open_dialer.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdIDialerServiceOpenDialer {

	CmdIDialerServiceOpenDialer({
		this.phoneNumber,
	});

	@JsonKey(name: "PhoneNumber", nullable: true)
	final String phoneNumber;


	factory CmdIDialerServiceOpenDialer.fromJson(Map<dynamic, dynamic> json) => _$CmdIDialerServiceOpenDialerFromJson(json);

	Map<String, dynamic> toJson() => _$CmdIDialerServiceOpenDialerToJson(this);

}
