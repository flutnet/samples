#/bin/bash

# Build flutter android and ios modules for all the projects
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
VSTOOL_PATH="/Applications/Visual Studio.app/Contents/MacOS/vstool"
MSBUILD_PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/msbuild
BASE_DIR="$SCRIPT_DIR/../"


## declare an array flutter projects folders
FLUTTER_PRJS=(
"FlutnetAnimals/flutter/flutnet_animals/"
"FlutnetContactList/flutter/flutnet_contact_list/"
"FlutnetCounter/flutter/flutnet_counter/"
"FlutnetDialer/flutter/flutnet_dialer/"
"FlutnetErrors/flutter/flutnet_errors/"
"FlutnetEvents/flutter/flutnet_events/"
"FlutnetFlare/flutter/flutnet_flare/"
"FlutnetNotes/flutter/flutnet_notes/"
"FlutnetVideoPlayer/flutter/flutnet_video_player/"
"MyFirstApp/flutter/my_first_app/"
)

echo ""
echo "Start building flutter modules"
echo ""

# For each project build the flutter module
for prj in ${FLUTTER_PRJS[*]} 
  do
    echo "Build $prj flutter module..."
    cd "$BASE_DIR/$prj"
    flutter pub get
    flutter build ios-framework --no-profile
    flutter build aar --no-profile
  done


# Project solutions to build
XAMARIN_SLNS=(
"FlutnetAnimals/FlutnetAnimals.sln"
"FlutnetContactList/FlutnetContactList.sln"
"FlutnetCounter/FlutnetCounter.sln"
"FlutnetDialer/FlutnetDialer.sln"
"FlutnetErrors/FlutnetErrors.sln"
"FlutnetEvents/FlutnetEvents.sln"
"FlutnetFlare/FlutnetFlare.sln"
"FlutnetNotes/FlutnetNotes.sln"
"FlutnetVideoPlayer/FlutnetVideoPlayer.sln"
"MyFirstApp/MyFirstApp.sln"
)

echo ""
echo "Start building Xamarin projects"
echo ""

# Build the Xamarin solutions
for sln in ${XAMARIN_SLNS[*]} 
  do
    # Full solution PATH
    SOLUTION_PATH="$BASE_DIR/$sln"
    # Restore Nuget Packages
    # The following commands do NOT work for Xamarin projects
    # https://xamarin.github.io/bugzilla-archives/58/58254/bug.html
    # dotnet restore "$SOLUTION_PATH"
    echo "Restore NuGets for $SOLUTION_PATH ..."
    "$MSBUILD_PATH" /t:restore "$SOLUTION_PATH"
    # Clean and build sample projects (Debug configuration is enough)
    echo "Clean DEBUG $SOLUTION_PATH ..."  
    "$VSTOOL_PATH" build --configuration:Debug --target:Clean "$SOLUTION_PATH"
    echo "Build DEBUG for $SOLUTION_PATH ..."  
    "$VSTOOL_PATH" build --configuration:Debug "$SOLUTION_PATH"
    echo "Clean RELEASE $SOLUTION_PATH ..."  
    "$VSTOOL_PATH" build --configuration:Release --target:Clean "$SOLUTION_PATH"
    echo "Build RELEASE for $SOLUTION_PATH ..."  
    "$VSTOOL_PATH" build --configuration:Release "$SOLUTION_PATH"
  done
