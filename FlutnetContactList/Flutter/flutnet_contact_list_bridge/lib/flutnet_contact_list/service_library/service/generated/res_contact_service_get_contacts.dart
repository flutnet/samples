// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact.dart';

part 'res_contact_service_get_contacts.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResContactServiceGetContacts {

	ResContactServiceGetContacts({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final List<Contact> returnValue;


	factory ResContactServiceGetContacts.fromJson(Map<dynamic, dynamic> json) => _$ResContactServiceGetContactsFromJson(json);

	Map<String, dynamic> toJson() => _$ResContactServiceGetContactsToJson(this);

}
