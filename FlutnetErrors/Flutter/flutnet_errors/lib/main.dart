import 'package:flutter/material.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/data/login_errors.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/data/session_info.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/services/login_service.dart';
import 'package:flutnet_errors_bridge/flutnet_errors/service_library/errors/login_exception.dart';
import 'package:flutnet_errors_bridge/flutnet/service_model/platform_operation_exception.dart';
import 'package:flutnet_errors_bridge/flutnet_bridge.dart';

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
      title: 'Flutnet Errors Handling',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutnet Errors Handling'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum ErrorLevel {
  Ok,
  Warning,
  Bad,
}

class _MyHomePageState extends State<MyHomePage> {
  // Reference to the xamarin login service
  final LoginService _loginService = LoginService("login_service");

  String _token;

  void _login(
    BuildContext context,
    String username,
    String password,
    bool forceError,
  ) async {
    // Login using xamarin  service
    try {
      _token = null;

      SessionInfo sessionInfo = await _loginService.login(
        username: username,
        password: password,
        forceHandleError: forceError,
      );

      setState(() {
        _token = sessionInfo.token;
      });

      // Show snackbar with success message
      showSnackbar(context, "Login succeed with token $_token", ErrorLevel.Ok);
    } on LoginException catch (ex) {
      // Here we have capture a specific exception
      // from xamarin
      switch (ex.error) {
        case LoginErrors.InvalidUsername:
          showSnackbar(context, "Invalid username", ErrorLevel.Warning);
          break;
        case LoginErrors.InvalidPassword:
          showSnackbar(context, "Invalid password", ErrorLevel.Warning);
          break;
        case LoginErrors.InvalidUsernameAndPassword:
          showSnackbar(
              context, "Invalid username and password", ErrorLevel.Warning);
          break;
      }
    } on PlatformOperationException catch (pe) {
      showSnackbar(context, "$pe", ErrorLevel.Bad);
    } on Exception catch (ex) {
      showSnackbar(context, "$ex", ErrorLevel.Bad);
    }
  }

  void showSnackbar(
    BuildContext context,
    String message,
    ErrorLevel level,
  ) {
    Icon icon = Icon(Icons.check);
    Color background = Colors.black;

    switch (level) {
      case ErrorLevel.Ok:
        icon = Icon(Icons.check);
        background = Colors.green;
        break;
      case ErrorLevel.Warning:
        icon = Icon(Icons.warning);
        background = Colors.orange;
        break;
      case ErrorLevel.Bad:
        icon = Icon(Icons.error);
        background = Colors.red;
        break;
    }

    final snackBar = SnackBar(
      duration: const Duration(seconds: 10),
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
    Scaffold.of(context).removeCurrentSnackBar();
    // Show the snackbar
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  void initState() {
    super.initState();
  }

  Widget _roundedButton(BuildContext context, String text, VoidCallback onTap) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      color: Colors.purple.shade100,
      child: Container(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        margin: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Builder(
        builder: (BuildContext context) => SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      // Welcome message from xamarin
                      "Token is:",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 5),
                    Text(
                      // Welcome message from xamarin
                      _token ?? "NO-TOKEN",
                      style: TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _roundedButton(
                context,
                "Try login with success",
                () => _login(context, "pippo", "password", false),
              ),
              SizedBox(height: 10),
              _roundedButton(
                context,
                "Try login with invalid username",
                () => _login(context, "***", "password", false),
              ),
              SizedBox(height: 10),
              _roundedButton(
                context,
                "Try login with invalid password",
                () => _login(context, "pippo", "****", false),
              ),
              SizedBox(height: 10),
              _roundedButton(
                context,
                "Try login with invalid username and password",
                () => _login(context, "*****", "****", false),
              ),
              SizedBox(height: 10),
              _roundedButton(
                context,
                "Try login with unhandled error",
                () => _login(context, "*****", "****", true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
