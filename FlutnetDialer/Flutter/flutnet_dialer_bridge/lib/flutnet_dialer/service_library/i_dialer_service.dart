// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_dialer_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_dialer_bridge/flutnet_bridge.dart';
import 'package:flutnet_dialer_bridge/flutnet_dialer/service_library/generated/res_i_dialer_service_open_dialer.dart';
import 'package:flutnet_dialer_bridge/flutnet_dialer/service_library/generated/cmd_i_dialer_service_open_dialer.dart';



class IDialerService {

	static const String _type = 'FlutnetDialer.ServiceLibrary.IDialerService';

	IDialerService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kOpenDialer = 'OpenDialer(string)';
	Future<void> openDialer({
		String phoneNumber,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdIDialerServiceOpenDialer _param = CmdIDialerServiceOpenDialer(
				phoneNumber: phoneNumber,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kOpenDialer, 
				arguments: _param.toJson(),
			);
			ResIDialerServiceOpenDialer _res = ResIDialerServiceOpenDialer.fromJson(_data);

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'openDialer': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'openDialer': $e");
		}
	}


}
