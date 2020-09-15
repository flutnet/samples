import 'package:flutter/material.dart';
import 'package:flutnet_counter_bridge/flutnet_bridge.dart';
import 'package:flutnet_counter_bridge/flutnet_counter/service_library/counter_service.dart';

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
      title: 'Flutnet Counter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutnet Counter App'),
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
    int value = await _counterService.increment();
    setState(() {
      _counterValue = value;
    });
  }

  void _decrement() async {
    // Decrement the value from xamarin
    int value = await _counterService.decrement();
    setState(() {
      _counterValue = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _load();
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
