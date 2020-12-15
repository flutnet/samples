// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/service/generated/res_contact_service_query_contacts.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact_query_result.dart';

part 'res_contact_service_query_contacts.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResContactServiceQueryContacts {

	ResContactServiceQueryContacts({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final ContactQueryResult returnValue;


	factory ResContactServiceQueryContacts.fromJson(Map<dynamic, dynamic> json) => _$ResContactServiceQueryContactsFromJson(json);

	Map<String, dynamic> toJson() => _$ResContactServiceQueryContactsToJson(this);

}
