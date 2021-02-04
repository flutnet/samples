// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact_query_result.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact.dart';

part 'contact_query_result.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ContactQueryResult extends Object {

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

	/// Mapping between NET types and Dart Type
	static final Map<String, ContactQueryResult Function(Map<String, dynamic>)> 	_typeToContactQueryResult = {
		'FlutnetContactList.ServiceLibrary.Data.ContactQueryResult, FlutnetContactList.ServiceLibrary': (Map<String, dynamic> json) => ContactQueryResult.fromJson(json),
	};


	/// Dynamic deserialization
	factory ContactQueryResult.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetContactList.ServiceLibrary.Data.ContactQueryResult, FlutnetContactList.ServiceLibrary';
			var fromJson = 	_typeToContactQueryResult.containsKey(typeKey)
			 ? 	_typeToContactQueryResult[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}

	/// Mapping between Dart Type and NET types
	static final Map<Type, String> 	_contactQueryResultToType = {
		ContactQueryResult().runtimeType : "FlutnetContactList.ServiceLibrary.Data.ContactQueryResult, FlutnetContactList.ServiceLibrary",
	};


	/// Dynamic serialization
	Map<String, dynamic> toJsonDynamic() {

		try {
			// Get the NET Type from the Dart runtime type
			final String typeKey = 
				_contactQueryResultToType.containsKey(this.runtimeType)
			 ? 	_contactQueryResultToType[this.runtimeType] 
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
	ContactQueryResult copyWith({
		int totalCount,
		List<Contact> contacts,
	}) {
	return ContactQueryResult(
		totalCount: totalCount ?? this.totalCount,
		contacts: contacts ?? this.contacts,
	);
	}


}
