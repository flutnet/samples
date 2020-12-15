// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:my_first_app_bridge/my_first_app/service_library/my_first_service.dart';
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:my_first_app_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:my_first_app_bridge/flutnet_bridge.dart';
import 'package:my_first_app_bridge/my_first_app/service_library/generated/res_my_first_service_get_message.dart';
import 'package:my_first_app_bridge/my_first_app/service_library/generated/cmd_my_first_service_get_message.dart';



class MyFirstService {

	static const String _type = 'MyFirstApp.ServiceLibrary.MyFirstService';

	MyFirstService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kGetMessage = 'GetMessage()';
	Future<String> getMessage() async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdMyFirstServiceGetMessage _param = CmdMyFirstServiceGetMessage();
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetMessage, 
				arguments: _param.toJson(),
			);
			ResMyFirstServiceGetMessage _res = ResMyFirstServiceGetMessage.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getMessage': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getMessage': $e");
		}
	}


}
