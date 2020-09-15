import 'package:flutter/material.dart';
import 'package:my_first_app_bridge/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My First App Title'),
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
  // Reference to the xamarin welcome service
  final MyFirstService _myFirstService = new MyFirstService("my_first_service");

  // Initial message value
  String _messageValue = "....loading";

  // Load the message value from Xamarin
  void _load() async {
    try {
      String tmp = await _myFirstService.getMessage();

      // rebuild the widget with the new message value (should be "My First App")
      setState(() {
        _messageValue = tmp;
      });
    } on Exception catch (ex) {
      setState(() {
        _messageValue = "$ex";
      });
    }
  }

  // When the state is started, we call the _load() funtion
  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(
          _messageValue,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
