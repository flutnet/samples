// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_contact_service_get_contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResContactServiceGetContacts _$ResContactServiceGetContactsFromJson(Map json) {
  return ResContactServiceGetContacts(
    returnValue: (json['ReturnValue'] as List)
        ?.map((e) => e == null ? null : Contact.fromJson(e as Map))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResContactServiceGetContactsToJson(
        ResContactServiceGetContacts instance) =>
    <String, dynamic>{
      'ReturnValue': instance.returnValue?.map((e) => e?.toJson())?.toList(),
    };
