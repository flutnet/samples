// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_note_database_get_note_async.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/note.dart';

part 'res_note_database_get_note_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResNoteDatabaseGetNoteAsync {

	ResNoteDatabaseGetNoteAsync({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final Note returnValue;


	factory ResNoteDatabaseGetNoteAsync.fromJson(Map<dynamic, dynamic> json) => _$ResNoteDatabaseGetNoteAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$ResNoteDatabaseGetNoteAsyncToJson(this);

}
