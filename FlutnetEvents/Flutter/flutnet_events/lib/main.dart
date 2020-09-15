import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutnet_events_bridge/flutnet_events/service_library/counter_service.dart';
import 'package:flutnet_events_bridge/flutnet_events/service_library/counter_changed_args.dart';
import 'package:flutnet_events_bridge/flutnet_bridge.dart';

void main() {
  // Configure the bridge mode
  FlutnetBridgeConfig.mode = FlutnetBridgeMode.PlatformChannel;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutnet Events: counter app',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Flutnet Events: counter app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Reference to the xamarin counter service
  final CounterService _counterService = CounterService("counter_service");

  // The current counter value
  int _counterValue = -1;

  void _load() async {
    // Get the value from xamarin
    int value = await _counterService.getValue();
    setState(() {
      _counterValue = value;
    });
  }

  void _increment() async {
    // Increment the value from xamarin
    await _counterService.increment();
  }

  void _decrement() async {
    // Decrement the value from xamarin
    await _counterService.decrement();
  }

  StreamSubscription<CounterChangedArgs> _eventSubscription;

  @override
  void initState() {
    super.initState();
    _load();

    // *************************************
    // Connect to the counter changed event
    // *************************************
    _eventSubscription = _counterService.valueChanged.listen(
      (CounterChangedArgs args) {
        // Receive the event
        setState(() {
          _counterValue = args.value;
        });
      },
      cancelOnError: false,
    );
  }

  @override
  void dispose() {
    //
    // IMPORTANT: Cancel the subscription from the event.
    //
    _eventSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              // Welcome message from xamarin
              "The current value is",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                // Welcome message from xamarin
                "$_counterValue",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () => _decrement(),
                ),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () => _increment(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
