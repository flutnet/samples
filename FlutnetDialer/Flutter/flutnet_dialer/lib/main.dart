import 'package:flutter/material.dart';
import 'package:flutnet_dialer_bridge/flutnet_bridge.dart';
import 'package:flutnet_dialer_bridge/flutnet_dialer/service_library/i_dialer_service.dart';

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
      title: 'Flutnet Dialer',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutnet Dialer'),
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
  // Reference to the xamarin dialer service interface
  // NOTE: we reference the service as an interface because we don't care about the implementation.
  final IDialerService _dialerService = IDialerService("dialer_service");

  String _phoneNumber = "+39-123-456-789";

  @override
  void initState() {
    super.initState();
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                // Welcome message from xamarin
                _phoneNumber,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(Icons.phone),
              // We open the dialer using the service
              onPressed: () =>
                  _dialerService.openDialer(phoneNumber: _phoneNumber),
            ),
            SizedBox(
              height: 5,
            ),
            Text("tap to open the dialer")
          ],
        ),
      ),
    );
  }
}
