import 'dart:typed_data';

import 'package:flutnet_animals/animal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/services/animal_service.dart';
import 'package:flutnet_animals_bridge/flutnet_animals/service_library/data/animal.dart';
import 'package:flutnet_animals_bridge/flutnet_bridge.dart';
import 'package:flutter/scheduler.dart';

void main() {
  // Flutnet bridge configuration (PlatformChannel vs WebSocket)
  FlutnetBridgeConfig.mode = FlutnetBridgeMode.PlatformChannel;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutnet Animals',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutnet Animals'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Xamarin Animal Service
  final AnimalService _animalService = AnimalService("animal_service");

  // Scaffold Key
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Animal> _animals;

  void _showSnackbar(
    BuildContext context,
    String message,
    bool isError,
  ) {
    Icon icon = Icon(Icons.check);
    Color background = Colors.green;

    if (isError ?? false) {
      icon = Icon(Icons.error);
      background = Colors.red;
    }

    final snackBar = SnackBar(
      duration: const Duration(seconds: 60),
      content: Row(
        children: <Widget>[
          icon,
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              message,
              overflow: TextOverflow.ellipsis,
              maxLines: 100,
            ),
          ),
        ],
      ),
      backgroundColor: background,
    );

    // Remove a snackbar if present
    _scaffoldKey.currentState.removeCurrentSnackBar();
    // Show the snackbar
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  Future _loadAnimals() async {
    try {
      // Load the animals from the xamarin service
      List<Animal> animalsFromXamarin = await _animalService.getAnimals();

      // Update the UI State using xamarin datas
      setState(() {
        _animals = animalsFromXamarin;
      });
    } catch (ex) {
      _showSnackbar(context, ex.toString(), true);
    }
  }

  @override
  void initState() {
    super.initState();
    // Load all the animals data after the first frame
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _loadAnimals();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: _buildContent(context),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // Build the contect of the page
  Widget _buildContent(BuildContext context) {
    if (_animals == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 3,
            ),
            Text("Loading Animals from Xamarin..."),
          ],
        ),
      );
    }

    // Show all the animals on the screen
    if (_animals.length > 0) {
      return ListView.builder(
        itemCount: _animals.length,
        itemBuilder: (context, index) {
          return AnimalItem(
            _animals[index],

            // When we tap the item
            onTap: (animal) async {
              // Get the animal kind from xamarin
              try {
                String animalKind = await _animalService.getAnimalKind(
                  animal: animal,
                );

                // Show the details dialog
                await showDialog(
                  context: context,
                  builder: (_) => DetailsDialog(
                    animal.image,
                    animalKind,
                  ),
                );
              } catch (ex) {
                _showSnackbar(context, ex.toString(), true);
              }
            },
          );
        },
      );
    }

    return Center(
      child: Text("No animals to view"),
    );
  }
}

class DetailsDialog extends StatelessWidget {
  final String animalKind;
  final Uint8List image;

  const DetailsDialog(
    this.image,
    this.animalKind, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          this.image == null
              ? Container(
                  height: 200,
                  child: Center(
                    child: Icon(
                      Icons.image,
                      size: 35,
                    ),
                  ),
                )
              : Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: MemoryImage(this.image), fit: BoxFit.cover)),
                ),
          Text(
            this.animalKind,
            style: Theme.of(context).primaryTextTheme.headline2.copyWith(
                  color: Colors.black,
                ),
          )
        ],
      ),
    );
  }
}
