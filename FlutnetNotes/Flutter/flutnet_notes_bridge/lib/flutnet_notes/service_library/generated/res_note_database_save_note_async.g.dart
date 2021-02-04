// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_note_database_save_note_async.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResNoteDatabaseSaveNoteAsync _$ResNoteDatabaseSaveNoteAsyncFromJson(Map json) {
  return ResNoteDatabaseSaveNoteAsync(
    returnValue: json['ReturnValue'] == null
        ? null
        : Note.fromJsonDynamic(json['ReturnValue'] as Map),
  );
}

Map<String, dynamic> _$ResNoteDatabaseSaveNoteAsyncToJson(
        ResNoteDatabaseSaveNoteAsync instance) =>
    <String, dynamic>{
      'ReturnValue': instance.returnValue?.toJsonDynamic(),
    };
