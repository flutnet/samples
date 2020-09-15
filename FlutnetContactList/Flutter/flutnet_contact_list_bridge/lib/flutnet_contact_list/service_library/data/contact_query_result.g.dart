// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_query_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactQueryResult _$ContactQueryResultFromJson(Map json) {
  return ContactQueryResult(
    totalCount: json['TotalCount'] as int,
    contacts: (json['Contacts'] as List)
        ?.map((e) => e == null ? null : Contact.fromJson(e as Map))
        ?.toList(),
  );
}

Map<String, dynamic> _$ContactQueryResultToJson(ContactQueryResult instance) =>
    <String, dynamic>{
      'TotalCount': instance.totalCount,
      'Contacts': instance.contacts?.map((e) => e?.toJson())?.toList(),
    };
