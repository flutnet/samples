// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map json) {
  return Contact(
    name: json['Name'] as String,
    lastname: json['Lastname'] as String,
    phoneNumber: json['PhoneNumber'] as String,
    nationId: json['NationId'] as int,
    image: const Uint8Converter().fromJsonDynamic(json['Image']),
  );
}

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'Name': instance.name,
      'Lastname': instance.lastname,
      'PhoneNumber': instance.phoneNumber,
      'NationId': instance.nationId,
      'Image': const Uint8Converter().toJsonDynamic(instance.image),
    };
