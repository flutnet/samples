// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_notes_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_notes_bridge/flutnet_bridge.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_note_database_get_notes_async.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_note_database_get_notes_async.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/note.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_note_database_get_note_async.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_note_database_get_note_async.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_note_database_save_note_async.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_note_database_save_note_async.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_note_database_delete_note_async.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_note_database_delete_note_async.dart';



class NoteDatabase {

	static const String _type = 'FlutnetNotes.ServiceLibrary.NoteDatabase';

	NoteDatabase(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kGetNotesAsync = 'GetNotesAsync()';
	Future<List<Note>> getNotesAsync() async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdNoteDatabaseGetNotesAsync _param = CmdNoteDatabaseGetNotesAsync();
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetNotesAsync, 
				arguments: _param.toJson(),
			);
			ResNoteDatabaseGetNotesAsync _res = ResNoteDatabaseGetNotesAsync.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getNotesAsync': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getNotesAsync': $e");
		}
	}


	static const _kGetNoteAsync = 'GetNoteAsync(int)';
	Future<Note> getNoteAsync({
		int id,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdNoteDatabaseGetNoteAsync _param = CmdNoteDatabaseGetNoteAsync(
				id: id,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetNoteAsync, 
				arguments: _param.toJson(),
			);
			ResNoteDatabaseGetNoteAsync _res = ResNoteDatabaseGetNoteAsync.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getNoteAsync': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getNoteAsync': $e");
		}
	}


	static const _kSaveNoteAsync = 'SaveNoteAsync(FlutnetNotes.ServiceLibrary.Note)';
	Future<int> saveNoteAsync({
		Note note,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdNoteDatabaseSaveNoteAsync _param = CmdNoteDatabaseSaveNoteAsync(
				note: note,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kSaveNoteAsync, 
				arguments: _param.toJson(),
			);
			ResNoteDatabaseSaveNoteAsync _res = ResNoteDatabaseSaveNoteAsync.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'saveNoteAsync': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'saveNoteAsync': $e");
		}
	}


	static const _kDeleteNoteAsync = 'DeleteNoteAsync(FlutnetNotes.ServiceLibrary.Note)';
	Future<int> deleteNoteAsync({
		Note note,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdNoteDatabaseDeleteNoteAsync _param = CmdNoteDatabaseDeleteNoteAsync(
				note: note,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kDeleteNoteAsync, 
				arguments: _param.toJson(),
			);
			ResNoteDatabaseDeleteNoteAsync _res = ResNoteDatabaseDeleteNoteAsync.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'deleteNoteAsync': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'deleteNoteAsync': $e");
		}
	}


}
