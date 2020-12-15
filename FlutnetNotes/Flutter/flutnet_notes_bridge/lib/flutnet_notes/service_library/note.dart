// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/note.dart';
// *************************************
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutnet_notes_bridge/converters.dart';

part 'note.g.dart';


/// An annotation for the code generator to know that this class needs the
/// the star denotes the source file name.
@immutable
@JsonSerializable(nullable: true, explicitToJson: true, anyMap: true)
class Note {

	Note({
		this.iD,
		this.title,
		this.content,
		this.isImportant,
		this.date,
	});

	@JsonKey(name: "ID", nullable: false)
	final int iD;

	@JsonKey(name: "Title", nullable: true)
	final String title;

	@JsonKey(name: "Content", nullable: true)
	final String content;

	@JsonKey(name: "IsImportant", nullable: false)
	final bool isImportant;

	@JsonKey(name: "Date")
	@DateTimeConverter()
	final DateTime date;


	factory Note.fromJson(Map<dynamic, dynamic> json) => _$NoteFromJson(json);

	Map<String, dynamic> toJson() => _$NoteToJson(this);

}
