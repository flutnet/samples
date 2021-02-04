// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmd_login_service_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CmdLoginServiceLogin _$CmdLoginServiceLoginFromJson(Map json) {
  return CmdLoginServiceLogin(
    username: json['Username'] as String,
    password: json['Password'] as String,
    forceHandleError: json['ForceHandleError'] as bool,
  );
}

Map<String, dynamic> _$CmdLoginServiceLoginToJson(
        CmdLoginServiceLogin instance) =>
    <String, dynamic>{
      'Username': instance.username,
      'Password': instance.password,
      'ForceHandleError': instance.forceHandleError,
    };
