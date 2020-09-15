# Flutnet Counter

A simple counter app developed using [Flutnet](https://www.flutnet.com). See all the details reading [Counter App Tutorial](https://www.flutnet.com/Documentation/Samples-Tutorials/Flutnet-Counter).

## Features

- All the UI realized in Flutter
- The code that increment the counter value run using a Xamarin class called **CounterService**.

<img src="github_assets/sketch.png" height="250" style="background-color:white; padding:10px;">

## Run the project

- With Xamarin installed, clone project and open the solution file **FlutnetCounter.sln**
- Build the **FlutnetCounter.ServiceLibrary**: this will update the **flutnet_counter_bridge** package project.
- With Flutter 1.20.2 installed, go to `Flutter/flutnet_counter` project and run 
    - `flutter build ios-framework --no-profile` (for Flutter iOS)
    - `flutter build aar --no-profile` (for Flutter Android)
- Before running **FlutnetCounter.Android** _ensure to manually uninstall the previus deployed application_ `com.example.app` from your device (see [Flutnet Known Issues page](https://www.flutnet.com/Download/Release-Notes/Known-Issues)). This procedure must be done every time you make changes to the Flutter module and you want these changes to be reflected inside the Xamarin Android application
    - `adb uninstall --user 0 com.example.app`
- Run the Xamarin project from Visual Studio
- Remember that **FlutnetCounter.iOS** project works only on **macOS**. See [Flutnet on Windows vs macOS](https://www.flutnet.com/Documentation/Getting-Started/Flutnet-on-Windows-vs-macOS).

## Screenshots

<img src="github_assets/app.gif" height="600">
