// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/service/generated/cmd_contact_service_get_contacts.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_contact_service_get_contacts.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdContactServiceGetContacts {

	CmdContactServiceGetContacts({
		this.name,
		this.lastname,
		this.startIndex,
		this.limit,
	});

	@JsonKey(name: "Name", nullable: true)
	final String name;

	@JsonKey(name: "Lastname", nullable: true)
	final String lastname;

	@JsonKey(name: "StartIndex", nullable: false)
	final int startIndex;

	@JsonKey(name: "Limit", nullable: false)
	final int limit;


	factory CmdContactServiceGetContacts.fromJson(Map<dynamic, dynamic> json) => _$CmdContactServiceGetContactsFromJson(json);

	Map<String, dynamic> toJson() => _$CmdContactServiceGetContactsToJson(this);

}
