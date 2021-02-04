// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmd_contact_service_query_contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CmdContactServiceQueryContacts _$CmdContactServiceQueryContactsFromJson(
    Map json) {
  return CmdContactServiceQueryContacts(
    name: json['Name'] as String,
    lastname: json['Lastname'] as String,
    startIndex: json['StartIndex'] as int,
    limit: json['Limit'] as int,
  );
}

Map<String, dynamic> _$CmdContactServiceQueryContactsToJson(
        CmdContactServiceQueryContacts instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Lastname': instance.lastname,
      'StartIndex': instance.startIndex,
      'Limit': instance.limit,
    };
