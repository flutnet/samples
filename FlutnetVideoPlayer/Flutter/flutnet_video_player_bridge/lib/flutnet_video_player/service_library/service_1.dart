// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_video_player_bridge/flutnet_video_player/service_library/service_1.dart';
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_video_player_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_video_player_bridge/flutnet_bridge.dart';
import 'package:flutnet_video_player_bridge/flutnet_video_player/service_library/generated/res_service_1_hello.dart';
import 'package:flutnet_video_player_bridge/flutnet_video_player/service_library/generated/cmd_service_1_hello.dart';



class Service1 {

	static const String _type = 'FlutnetVideoPlayer.ServiceLibrary.Service1';

	Service1(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kHello = 'Hello(string)';
	Future<String> hello({
		String name,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdService1Hello _param = CmdService1Hello(
				name: name,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kHello, 
				arguments: _param.toJson(),
			);
			ResService1Hello _res = ResService1Hello.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'hello': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'hello': $e");
		}
	}


}
