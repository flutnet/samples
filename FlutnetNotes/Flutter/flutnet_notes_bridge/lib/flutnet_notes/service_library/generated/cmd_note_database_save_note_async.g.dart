// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmd_note_database_save_note_async.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CmdNoteDatabaseSaveNoteAsync _$CmdNoteDatabaseSaveNoteAsyncFromJson(Map json) {
  return CmdNoteDatabaseSaveNoteAsync(
    note: json['Note'] == null ? null : Note.fromJsonDynamic(json['Note'] as Map),
  );
}

Map<String, dynamic> _$CmdNoteDatabaseSaveNoteAsyncToJson(
        CmdNoteDatabaseSaveNoteAsync instance) =>
    <String, dynamic>{
      'Note': instance.note?.toJsonDynamic(),
    };
