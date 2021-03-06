import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

// Xamarin Essential Laucher Service
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/launcher_service.dart';
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/launcher_operation_error.dart';
import 'package:flutnet_notes_bridge/flutnet/service_model/platform_operation_exception.dart';

// Xamarin Essential Preference Service
import 'package:flutnet_notes_bridge/flutnet_notes/service_library/preference_service.dart';

class SettingsPage extends StatefulWidget {
  Function(Brightness brightness) changeTheme;
  SettingsPage({Key key, Function(Brightness brightness) changeTheme})
      : super(key: key) {
    this.changeTheme = changeTheme;
  }
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String selectedTheme;
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (Theme.of(context).brightness == Brightness.dark) {
        selectedTheme = 'dark';
      } else {
        selectedTheme = 'light';
      }
    });

    return Scaffold(
      body: Builder(
        builder: (BuildContext context) => ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding:
                          const EdgeInsets.only(top: 24, left: 24, right: 24),
                      child: Icon(OMIcons.arrowBack)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 36, right: 24),
                  child: buildHeaderWidget(context),
                ),
                buildCardWidget(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('App Theme',
                        style:
                            TextStyle(fontFamily: 'ZillaSlab', fontSize: 24)),
                    Container(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 'light',
                          groupValue: selectedTheme,
                          onChanged: handleThemeSelection,
                        ),
                        Text(
                          'Light theme',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 'dark',
                          groupValue: selectedTheme,
                          onChanged: handleThemeSelection,
                        ),
                        Text(
                          'Dark theme',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ],
                )),
                buildCardWidget(Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('About app',
                        style: TextStyle(
                            fontFamily: 'ZillaSlab',
                            fontSize: 24,
                            color: Theme.of(context).primaryColor)),
                    Container(
                      height: 40,
                    ),
                    Center(
                      child: Text('Developed by'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1)),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                      child: Text(
                        'Flutnet',
                        style: TextStyle(fontFamily: 'ZillaSlab', fontSize: 24),
                      ),
                    )),
                    Container(
                      alignment: Alignment.center,
                      child: OutlineButton.icon(
                        icon: Icon(OMIcons.link),
                        label: Text('GITHUB',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                color: Colors.grey.shade500)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        onPressed: () => openGitHub(context),
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Center(
                      child: Text('Made With'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/flutnet_logo.png',
                              width: 200,
                              fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget buildCardWidget(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).dialogBackgroundColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 8),
                color: Colors.black.withAlpha(20),
                blurRadius: 16)
          ]),
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.all(16),
      child: child,
    );
  }

  Widget buildHeaderWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 16, left: 8),
      child: Text(
        'Settings',
        style: TextStyle(
            fontFamily: 'ZillaSlab',
            fontWeight: FontWeight.w700,
            fontSize: 36,
            color: Theme.of(context).primaryColor),
      ),
    );
  }

  // Laucher Service (Xamarin)
  final _preferenceService = PreferenceService("preference_service");

  void handleThemeSelection(String value) {
    setState(() {
      selectedTheme = value;
    });
    if (value == 'light') {
      widget.changeTheme(Brightness.light);
    } else {
      widget.changeTheme(Brightness.dark);
    }

    // Save the theme in Xamarin preference
    _preferenceService.setTheme(theme: value);
  }

  // Laucher Service (Xamarin)
  final _launcherService = LauncherService("launcher_service");

  void openGitHub(BuildContext ctx) {
    try {
      _launcherService.openBrowser(uri: 'https://www.github.com/flutnet');
    } on LauncherOperationError catch (ex) {
      // Show the error on the screen
      showSnackbar(context, ex.message);
    } on PlatformOperationException catch (ex) {
      // Show the error on the screen
      showSnackbar(context, ex.message);
    }
  }

  void showSnackbar(
    BuildContext context,
    String message,
  ) {
    Icon icon = Icon(Icons.error);
    Color background = Colors.red;

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
}
