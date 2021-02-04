// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_note_database_get_notes_async.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'cmd_note_database_get_notes_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class CmdNoteDatabaseGetNotesAsync extends Object {

	CmdNoteDatabaseGetNotesAsync();


	factory CmdNoteDatabaseGetNotesAsync.fromJson(Map<dynamic, dynamic> json) => _$CmdNoteDatabaseGetNotesAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$CmdNoteDatabaseGetNotesAsyncToJson(this);



}
