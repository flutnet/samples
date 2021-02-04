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
class Note extends Object {

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

	/// Mapping between NET types and Dart Type
	static final Map<String, Note Function(Map<String, dynamic>)> 	_typeToNote = {
		'FlutnetNotes.ServiceLibrary.Note, FlutnetNotes.ServiceLibrary': (Map<String, dynamic> json) => Note.fromJson(json),
	};


	/// Dynamic deserialization
	factory Note.fromJsonDynamic(Map<String, dynamic> json) {

		// Nothing to do
		if (json == null) return null;

		try {
			String typeKey = json['\$type'];
			// Default type key
			typeKey ??= 'FlutnetNotes.ServiceLibrary.Note, FlutnetNotes.ServiceLibrary';
			var fromJson = 	_typeToNote.containsKey(typeKey)
			 ? 	_typeToNote[typeKey] 
			 : null;

			///! REAL DESERIALIZATION PROCESS
			return fromJson(json);

		} catch (e) {
		  throw new Exception('Error during lib deserialization process: $json');
		}
	}

	/// Mapping between Dart Type and NET types
	static final Map<Type, String> 	_noteToType = {
		Note().runtimeType : "FlutnetNotes.ServiceLibrary.Note, FlutnetNotes.ServiceLibrary",
	};


	/// Dynamic serialization
	Map<String, dynamic> toJsonDynamic() {

		try {
			// Get the NET Type from the Dart runtime type
			final String typeKey = 
				_noteToType.containsKey(this.runtimeType)
			 ? 	_noteToType[this.runtimeType] 
			 : null;

			/// Wrap the object with his NET type key
			final Map<String, dynamic> map = {
				'\$type' : typeKey,
			};
			map.addAll(this.toJson());
			return map;

		} catch (e) {
		  throw new Exception('Error during lib serialization process: ${this.runtimeType}');
		}
	}


	// Copy with method for the class
	Note copyWith({
		int iD,
		String title,
		String content,
		bool isImportant,
		DateTime date,
	}) {
	return Note(
		iD: iD ?? this.iD,
		title: title ?? this.title,
		content: content ?? this.content,
		isImportant: isImportant ?? this.isImportant,
		date: date ?? this.date,
	);
	}


}
