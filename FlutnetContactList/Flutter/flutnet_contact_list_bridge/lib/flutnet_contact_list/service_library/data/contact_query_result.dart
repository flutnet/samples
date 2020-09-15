// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact.dart';

part 'contact_query_result.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ContactQueryResult {

	ContactQueryResult({
		this.totalCount,
		this.contacts,
	});

	@JsonKey(name: "TotalCount", nullable: false)
	final int totalCount;

	@JsonKey(name: "Contacts", nullable: true)
	final List<Contact> contacts;


	factory ContactQueryResult.fromJson(Map<dynamic, dynamic> json) => _$ContactQueryResultFromJson(json);

	Map<String, dynamic> toJson() => _$ContactQueryResultToJson(this);

}
