// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_i_dialer_service_open_dialer.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResIDialerServiceOpenDialer {

	ResIDialerServiceOpenDialer();


	factory ResIDialerServiceOpenDialer.fromJson(Map<dynamic, dynamic> json) => _$ResIDialerServiceOpenDialerFromJson(json);

	Map<String, dynamic> toJson() => _$ResIDialerServiceOpenDialerToJson(this);

}
