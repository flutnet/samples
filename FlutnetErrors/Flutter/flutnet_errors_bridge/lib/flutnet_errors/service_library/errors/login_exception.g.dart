// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginException _$LoginExceptionFromJson(Map json) {
  return LoginException(
    error: _$enumDecode(_$LoginErrorsEnumMap, json['Error']),
    message: json['Message'] as String,
  );
}

Map<String, dynamic> _$LoginExceptionToJson(LoginException instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Error': _$LoginErrorsEnumMap[instance.error],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

const _$LoginErrorsEnumMap = {
  LoginErrors.InvalidUsername: 'InvalidUsername',
  LoginErrors.InvalidPassword: 'InvalidPassword',
  LoginErrors.InvalidUsernameAndPassword: 'InvalidUsernameAndPassword',
};
