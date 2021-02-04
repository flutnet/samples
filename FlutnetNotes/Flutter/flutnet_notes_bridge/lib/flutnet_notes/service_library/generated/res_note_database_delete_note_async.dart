// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_note_database_delete_note_async.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_note_database_delete_note_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResNoteDatabaseDeleteNoteAsync extends Object {

	ResNoteDatabaseDeleteNoteAsync({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: false)
	final int returnValue;


	factory ResNoteDatabaseDeleteNoteAsync.fromJson(Map<dynamic, dynamic> json) => _$ResNoteDatabaseDeleteNoteAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$ResNoteDatabaseDeleteNoteAsyncToJson(this);



}
