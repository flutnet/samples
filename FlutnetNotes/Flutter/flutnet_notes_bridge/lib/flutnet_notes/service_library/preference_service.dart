// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_notes_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_notes_bridge/flutnet_bridge.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_preference_service_get_theme.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_preference_service_get_theme.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_preference_service_set_theme.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_preference_service_set_theme.dart';



class PreferenceService {

	static const String _type = 'FlutnetNotes.ServiceLibrary.PreferenceService';

	PreferenceService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kGetTheme = 'GetTheme()';
	Future<String> getTheme() async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdPreferenceServiceGetTheme _param = CmdPreferenceServiceGetTheme();
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetTheme, 
				arguments: _param.toJson(),
			);
			ResPreferenceServiceGetTheme _res = ResPreferenceServiceGetTheme.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getTheme': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getTheme': $e");
		}
	}


	static const _kSetTheme = 'SetTheme(string)';
	Future<void> setTheme({
		String theme,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdPreferenceServiceSetTheme _param = CmdPreferenceServiceSetTheme(
				theme: theme,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kSetTheme, 
				arguments: _param.toJson(),
			);
			ResPreferenceServiceSetTheme _res = ResPreferenceServiceSetTheme.fromJson(_data);

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'setTheme': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'setTheme': $e");
		}
	}


}
