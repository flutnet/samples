// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res_note_database_get_notes_async.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResNoteDatabaseGetNotesAsync _$ResNoteDatabaseGetNotesAsyncFromJson(Map json) {
  return ResNoteDatabaseGetNotesAsync(
    returnValue: (json['ReturnValue'] as List)
        ?.map((e) => e == null ? null : Note.fromJson(e as Map))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResNoteDatabaseGetNotesAsyncToJson(
        ResNoteDatabaseGetNotesAsync instance) =>
    <String, dynamic>{
      'ReturnValue': instance.returnValue?.map((e) => e?.toJson())?.toList(),
    };
