// *************************************
//         NOT EDIT THIS FILE          *
// *************************************
// IMPORT FILE: import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/animal_service.dart';
// *************************************
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutnet_animals_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_animals_bridge/flutnet_bridge.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/res_animal_service_get_animals.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/cmd_animal_service_get_animals.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/res_animal_service_get_animal_kind.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/generated/cmd_animal_service_get_animal_kind.dart';



class AnimalService {

	static const String _type = 'FlutnetAnimals.ServiceLibrary.Services.AnimalService';

	AnimalService(
		this.instanceId,
	);

	final String instanceId;


	// Events ***************************** 
	// Operations ***************************** 
	static const _kGetAnimals = 'GetAnimals()';
	Future<List<Animal>> getAnimals() async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdAnimalServiceGetAnimals _param = CmdAnimalServiceGetAnimals();
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetAnimals, 
				arguments: _param.toJson(),
			);
			ResAnimalServiceGetAnimals _res = ResAnimalServiceGetAnimals.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getAnimals': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getAnimals': $e");
		}
	}


	static const _kGetAnimalKind = 'GetAnimalKind(FlutnetAnimals.ServiceLibrary.Data.Animal)';
	Future<String> getAnimalKind({
		Animal animal,
	}) async {

		// Errors occurring on the platform side cause invokeMethod to throw
		// PlatformExceptions.
		try {

			CmdAnimalServiceGetAnimalKind _param = CmdAnimalServiceGetAnimalKind(
				animal: animal,
			);
			Map<String, dynamic> _data = await FlutnetBridge().invokeMethod(
				instanceId: instanceId, 
				service: _type, 
				operation: _kGetAnimalKind, 
				arguments: _param.toJson(),
			);
			ResAnimalServiceGetAnimalKind _res = ResAnimalServiceGetAnimalKind.fromJson(_data);
			return _res.returnValue;

		} on PlatformException catch (e) {
			throw Exception("Unable to execute method 'getAnimalKind': ${e.code}, ${e.message}");
		} on PlatformOperationException catch (fe) {
			throw fe;
		} on Exception catch (e) {
			throw Exception("Unable to execute method 'getAnimalKind': $e");
		}
	}


}
