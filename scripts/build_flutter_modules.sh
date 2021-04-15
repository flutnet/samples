#/bin/bash

# Build flutter android and ios modules for all the projects
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BASE_DIR="$SCRIPT_DIR/../"

#flutter pub get
#flutter build ios-framework --no-profile
#flutter build aar --no-profile
#cd $SCRIPT_DIR

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

# For each project
for prj in ${FLUTTER_PRJS[*]} 
  do
    echo "Build $prj flutter module..."
    cd "$BASE_DIR/$prj"
    flutter pub get
    flutter build ios-framework --no-profile
    flutter build aar --no-profile
  done

