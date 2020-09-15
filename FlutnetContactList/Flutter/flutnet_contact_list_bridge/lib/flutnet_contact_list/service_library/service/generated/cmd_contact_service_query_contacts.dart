// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_contact_service_query_contacts.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdContactServiceQueryContacts {

	CmdContactServiceQueryContacts({
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


	factory CmdContactServiceQueryContacts.fromJson(Map<dynamic, dynamic> json) => _$CmdContactServiceQueryContactsFromJson(json);

	Map<String, dynamic> toJson() => _$CmdContactServiceQueryContactsToJson(this);

}
