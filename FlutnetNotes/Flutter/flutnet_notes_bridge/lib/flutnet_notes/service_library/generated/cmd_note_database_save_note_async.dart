// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/note.dart';

part 'cmd_note_database_save_note_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdNoteDatabaseSaveNoteAsync {

	CmdNoteDatabaseSaveNoteAsync({
		this.note,
	});

	@JsonKey(name: "Note", nullable: true)
	final Note note;


	factory CmdNoteDatabaseSaveNoteAsync.fromJson(Map<dynamic, dynamic> json) => _$CmdNoteDatabaseSaveNoteAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$CmdNoteDatabaseSaveNoteAsyncToJson(this);

}
