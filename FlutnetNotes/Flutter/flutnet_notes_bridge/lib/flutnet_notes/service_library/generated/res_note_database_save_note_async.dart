// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'res_note_database_save_note_async.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class ResNoteDatabaseSaveNoteAsync {

	ResNoteDatabaseSaveNoteAsync({
		this.returnValue,
	});

	@JsonKey(name: "ReturnValue", nullable: false)
	final int returnValue;


	factory ResNoteDatabaseSaveNoteAsync.fromJson(Map<dynamic, dynamic> json) => _$ResNoteDatabaseSaveNoteAsyncFromJson(json);

	Map<String, dynamic> toJson() => _$ResNoteDatabaseSaveNoteAsyncToJson(this);

}
