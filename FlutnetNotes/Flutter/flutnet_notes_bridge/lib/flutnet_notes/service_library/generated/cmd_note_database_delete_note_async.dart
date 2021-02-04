// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_note_database_delete_note_async.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/note.dart';

part 'cmd_note_database_delete_note_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdNoteDatabaseDeleteNoteAsync extends Object {

	CmdNoteDatabaseDeleteNoteAsync({
		this.note,
	});

	@JsonKey(name: "Note", nullable: true)
	final Note note;


	factory CmdNoteDatabaseDeleteNoteAsync.fromJson(Map<dynamic, dynamic> json) => _$CmdNoteDatabaseDeleteNoteAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$CmdNoteDatabaseDeleteNoteAsyncToJson(this);



}
