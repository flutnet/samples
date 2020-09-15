// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'dart:typed_data';
import 'package:flutnet_contact_list_bridge/converters.dart';

part 'contact.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Contact {

	Contact({
		this.name,
		this.lastname,
		this.phoneNumber,
		this.nationId,
		this.image,
	});

	@JsonKey(name: "Name", nullable: true)
	final String name;

	@JsonKey(name: "Lastname", nullable: true)
	final String lastname;

	@JsonKey(name: "PhoneNumber", nullable: true)
	final String phoneNumber;

	@JsonKey(name: "NationId", nullable: false)
	final int nationId;

	@JsonKey(name: "Image")
	@Uint8Converter()
	final Uint8List image;


	factory Contact.fromJson(Map<dynamic, dynamic> json) => _$ContactFromJson(json);

	Map<String, dynamic> toJson() => _$ContactToJson(this);

}
