// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmd_contact_service_get_contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CmdContactServiceGetContacts _$CmdContactServiceGetContactsFromJson(Map json) {
  return CmdContactServiceGetContacts(
    name: json['Name'] as String,
    lastname: json['Lastname'] as String,
    startIndex: json['StartIndex'] as int,
    limit: json['Limit'] as int,
  );
}

Map<String, dynamic> _$CmdContactServiceGetContactsToJson(
        CmdContactServiceGetContacts instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Lastname': instance.lastname,
      'StartIndex': instance.startIndex,
      'Limit': instance.limit,
    };
