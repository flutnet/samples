// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_note_database_get_note_async.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResNoteDatabaseGetNoteAsync _$ResNoteDatabaseGetNoteAsyncFromJson(Map json) {
  return ResNoteDatabaseGetNoteAsync(
    returnValue: json['ReturnValue'] == null
        ? null
        : Note.fromJson(json['ReturnValue'] as Map),
  );
}

Map<String, dynamic> _$ResNoteDatabaseGetNoteAsyncToJson(
        ResNoteDatabaseGetNoteAsync instance) =>
    <String, dynamic>{
      'ReturnValue': instance.returnValue?.toJson(),
    };
