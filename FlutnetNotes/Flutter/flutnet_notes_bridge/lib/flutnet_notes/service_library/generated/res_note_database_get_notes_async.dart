// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/note.dart';

part 'res_note_database_get_notes_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResNoteDatabaseGetNotesAsync {

	ResNoteDatabaseGetNotesAsync({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: true)
	final List<Note> returnValue;


	factory ResNoteDatabaseGetNotesAsync.fromJson(Map<dynamic, dynamic> json) => _$ResNoteDatabaseGetNotesAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$ResNoteDatabaseGetNotesAsyncToJson(this);

}
