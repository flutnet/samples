// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map json) {
  return Note(
    iD: json['ID'] as int,
    title: json['Title'] as String,
    content: json['Content'] as String,
    isImportant: json['IsImportant'] as bool,
    date: const DateTimeConverter().fromJson(json['Date']),
  );
}

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'ID': instance.iD,
      'Title': instance.title,
      'Content': instance.content,
      'IsImportant': instance.isImportant,
      'Date': const DateTimeConverter().toJson(instance.date),
    };
