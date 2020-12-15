// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_errors_bridge/flutnet_errors/service_library/services/login_service.dart';
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_errors_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_errors_bridge/flutnet_bridge.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/services/generated/res_login_service_login.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/services/generated/cmd_login_service_login.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/data/session_info.dart';



class LoginService {

	static const String _type = 'FlutnetErrors.ServiceLibrary.Services.LoginService';

	LoginService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kLogin = 'Login(string, string, bool)';
	Future<SessionInfo> login({
		String username, 
		String password, 
		bool forceHandleError,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdLoginServiceLogin _param = CmdLoginServiceLogin(
				username: username, 
				password: password, 
				forceHandleError: forceHandleError,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kLogin, 
				arguments: _param.toJson(),
			);
			ResLoginServiceLogin _res = ResLoginServiceLogin.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'login': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'login': $e");
		}
	}


}
