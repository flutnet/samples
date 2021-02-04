// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact.dart';
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
class Contact extends Object {

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

	/// Mapping between NET types and Dart Type
	static final Map<String, Contact Function(Map<String, dynamic>)> 	_typeToContact = {
		'FlutnetContactList.ServiceLibrary.Data.Contact, FlutnetContactList.ServiceLibrary': (Map<String, dynamic> json) => Contact.fromJson(json),
	};


	/// Dynamic deserialization
	factory Contact.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetContactList.ServiceLibrary.Data.Contact, FlutnetContactList.ServiceLibrary';
			var fromJson = 	_typeToContact.containsKey(typeKey)
			 ? 	_typeToContact[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}

	/// Mapping between Dart Type and NET types
	static final Map<Type, String> 	_contactToType = {
		Contact().runtimeType : "FlutnetContactList.ServiceLibrary.Data.Contact, FlutnetContactList.ServiceLibrary",
	};


	/// Dynamic serialization
	Map<String, dynamic> toJsonDynamic() {

		try {
			// Get the NET Type from the Dart runtime type
			final String typeKey = 
				_contactToType.containsKey(this.runtimeType)
			 ? 	_contactToType[this.runtimeType] 
			 : null;

			/// Wrap the object with his NET type key
			final Map<String, dynamic> map = {
				'\$type' : typeKey,
			};
			map.addAll(this.toJson());
			return map;

		} catch (e) {
		  throw new Exception('Error during lib serialization process: ${this.runtimeType}');
		}
	}


	// Copy with method for the class
	Contact copyWith({
		String name,
		String lastname,
		String phoneNumber,
		int nationId,
		Uint8List image,
	}) {
	return Contact(
		name: name ?? this.name,
		lastname: lastname ?? this.lastname,
		phoneNumber: phoneNumber ?? this.phoneNumber,
		nationId: nationId ?? this.nationId,
		image: image ?? this.image,
	);
	}


}
