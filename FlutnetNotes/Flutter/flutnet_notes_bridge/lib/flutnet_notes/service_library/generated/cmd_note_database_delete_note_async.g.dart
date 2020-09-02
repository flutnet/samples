// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmd_note_database_delete_note_async.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CmdNoteDatabaseDeleteNoteAsync _$CmdNoteDatabaseDeleteNoteAsyncFromJson(
    Map json) {
  return CmdNoteDatabaseDeleteNoteAsync(
    note: json['Note'] == null ? null : Note.fromJson(json['Note'] as Map),
  );
}

Map<String, dynamic> _$CmdNoteDatabaseDeleteNoteAsyncToJson(
        CmdNoteDatabaseDeleteNoteAsync instance) =>
    <String, dynamic>{
      'Note': instance.note?.toJson(),
    };
