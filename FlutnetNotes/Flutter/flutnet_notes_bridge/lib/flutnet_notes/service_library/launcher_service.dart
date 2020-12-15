// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_notes_bridge/flutnet_notes/service_library/launcher_service.dart';
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_notes_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_notes_bridge/flutnet_bridge.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_launcher_service_open_browser.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_launcher_service_open_browser.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/res_launcher_service_share_text.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/generated/cmd_launcher_service_share_text.dart';



class LauncherService {

	static const String _type = 'FlutnetNotes.ServiceLibrary.LauncherService';

	LauncherService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kOpenBrowser = 'OpenBrowser(string)';
	Future<void> openBrowser({
		String uri,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdLauncherServiceOpenBrowser _param = CmdLauncherServiceOpenBrowser(
				uri: uri,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kOpenBrowser, 
				arguments: _param.toJson(),
			);
			ResLauncherServiceOpenBrowser _res = ResLauncherServiceOpenBrowser.fromJson(_data);

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'openBrowser': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'openBrowser': $e");
		}
	}


	static const _kShareText = 'ShareText(string, string)';
	Future<void> shareText({
		String title, 
		String text,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdLauncherServiceShareText _param = CmdLauncherServiceShareText(
				title: title, 
				text: text,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kShareText, 
				arguments: _param.toJson(),
			);
			ResLauncherServiceShareText _res = ResLauncherServiceShareText.fromJson(_data);

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'shareText': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'shareText': $e");
		}
	}


}
