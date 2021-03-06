﻿// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_note_database_save_note_async.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/note.dart';

part 'res_note_database_save_note_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResNoteDatabaseSaveNoteAsync extends Object {

	ResNoteDatabaseSaveNoteAsync({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final Note returnValue;


	factory ResNoteDatabaseSaveNoteAsync.fromJson(Map<dynamic, dynamic> json) => _$ResNoteDatabaseSaveNoteAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$ResNoteDatabaseSaveNoteAsyncToJson(this);



}
