// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_counter_bridge/flutnet_counter/service_library/counter_service.dart';
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_counter_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_counter_bridge/flutnet_bridge.dart';
import 'package:flutnet_counter_bridge/flutnet_counter/service_library/generated/res_counter_service_get_value.dart';
import 'package:flutnet_counter_bridge/flutnet_counter/service_library/generated/cmd_counter_service_get_value.dart';
import 'package:flutnet_counter_bridge/flutnet_counter/service_library/generated/res_counter_service_increment.dart';
import 'package:flutnet_counter_bridge/flutnet_counter/service_library/generated/cmd_counter_service_increment.dart';
import 'package:flutnet_counter_bridge/flutnet_counter/service_library/generated/res_counter_service_decrement.dart';
import 'package:flutnet_counter_bridge/flutnet_counter/service_library/generated/cmd_counter_service_decrement.dart';



class CounterService {

	static const String _type = 'FlutnetCounter.ServiceLibrary.CounterService';

	CounterService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kGetValue = 'GetValue()';
	Future<int> getValue() async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdCounterServiceGetValue _param = CmdCounterServiceGetValue();
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetValue, 
				arguments: _param.toJson(),
			);
			ResCounterServiceGetValue _res = ResCounterServiceGetValue.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getValue': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getValue': $e");
		}
	}


	static const _kIncrement = 'Increment()';
	Future<int> increment() async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdCounterServiceIncrement _param = CmdCounterServiceIncrement();
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kIncrement, 
				arguments: _param.toJson(),
			);
			ResCounterServiceIncrement _res = ResCounterServiceIncrement.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'increment': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'increment': $e");
		}
	}


	static const _kDecrement = 'Decrement()';
	Future<int> decrement() async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdCounterServiceDecrement _param = CmdCounterServiceDecrement();
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kDecrement, 
				arguments: _param.toJson(),
			);
			ResCounterServiceDecrement _res = ResCounterServiceDecrement.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'decrement': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'decrement': $e");
		}
	}


}
