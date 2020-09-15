// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_contact_list_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_contact_list_bridge/flutnet_bridge.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/service/generated/res_contact_service_get_contacts.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/service/generated/cmd_contact_service_get_contacts.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/service/generated/res_contact_service_query_contacts.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/service/generated/cmd_contact_service_query_contacts.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact_query_result.dart';



class ContactService {

	static const String _type = 'FlutnetContactList.ServiceLibrary.Service.ContactService';

	ContactService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kGetContacts = 'GetContacts(string, string, int, int)';
	Future<List<Contact>> getContacts({
		String name, 
		String lastname, 
		int startIndex, 
		int limit,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdContactServiceGetContacts _param = CmdContactServiceGetContacts(
				name: name, 
				lastname: lastname, 
				startIndex: startIndex, 
				limit: limit,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetContacts, 
				arguments: _param.toJson(),
			);
			ResContactServiceGetContacts _res = ResContactServiceGetContacts.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getContacts': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getContacts': $e");
		}
	}


	static const _kQueryContacts = 'QueryContacts(string, string, int, int)';
	Future<ContactQueryResult> queryContacts({
		String name, 
		String lastname, 
		int startIndex, 
		int limit,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdContactServiceQueryContacts _param = CmdContactServiceQueryContacts(
				name: name, 
				lastname: lastname, 
				startIndex: startIndex, 
				limit: limit,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kQueryContacts, 
				arguments: _param.toJson(),
			);
			ResContactServiceQueryContacts _res = ResContactServiceQueryContacts.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'queryContacts': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'queryContacts': $e");
		}
	}


}
