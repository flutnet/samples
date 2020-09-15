// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_contact_service_query_contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResContactServiceQueryContacts _$ResContactServiceQueryContactsFromJson(
    Map json) {
  return ResContactServiceQueryContacts(
    returnValue: json['ReturnValue'] == null
        ? null
        : ContactQueryResult.fromJson(json['ReturnValue'] as Map),
  );
}

Map<String, dynamic> _$ResContactServiceQueryContactsToJson(
        ResContactServiceQueryContacts instance) =>
    <String, dynamic>{
      'ReturnValue': instance.returnValue?.toJson(),
    };
