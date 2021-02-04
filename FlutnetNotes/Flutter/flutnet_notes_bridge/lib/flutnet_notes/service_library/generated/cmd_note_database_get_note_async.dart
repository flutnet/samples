// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_note_database_get_note_async.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_note_database_get_note_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdNoteDatabaseGetNoteAsync extends Object {

	CmdNoteDatabaseGetNoteAsync({
		this.id,
	});

	@JsonKey(name: "Id", nullable: false)
	final int id;


	factory CmdNoteDatabaseGetNoteAsync.fromJson(Map<dynamic, dynamic> json) => _$CmdNoteDatabaseGetNoteAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$CmdNoteDatabaseGetNoteAsyncToJson(this);



}
