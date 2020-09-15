// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_login_service_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResLoginServiceLogin _$ResLoginServiceLoginFromJson(Map json) {
  return ResLoginServiceLogin(
    returnValue: json['ReturnValue'] == null
        ? null
        : SessionInfo.fromJson(json['ReturnValue'] as Map),
  );
}

Map<String, dynamic> _$ResLoginServiceLoginToJson(
        ResLoginServiceLogin instance) =>
    <String, dynamic>{
      'ReturnValue': instance.returnValue?.toJson(),
    };
