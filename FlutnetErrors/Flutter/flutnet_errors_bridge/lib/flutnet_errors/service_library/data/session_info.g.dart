// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionInfo _$SessionInfoFromJson(Map json) {
  return SessionInfo(
    token: json['Token'] as String,
    lastLogin: const DateTimeConverter().fromJson(json['LastLogin']),
  );
}

Map<String, dynamic> _$SessionInfoToJson(SessionInfo instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'LastLogin': const DateTimeConverter().toJson(instance.lastLogin),
    };
