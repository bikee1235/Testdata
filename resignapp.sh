APP=$1
PROFILEPATH=anytest_valtes_Profile.mobileprovision
IDENTITY=61D7053CD64489A82280CF58DC7BDCACA2A16931
/usr/bin/security cms -D -i $PROFILEPATH > provision.plist
/usr/libexec/PlistBuddy -x -c 'Print :Entitlements' provision.plist > entitlements.plist
cp -vr $PROFILEPATH  $1/embedded.mobileprovision
cp -vr $PROFILEPATH $1/PlugIns/mediadevice.appex/embedded.mobileprovision

/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/Starscream.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/WebRTC.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/WebRTCiOSSDK.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/Frameworks/*/*/*
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/PlugIns/*
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/PlugIns/mediadevice.appex/Frameworks/WebRTC.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/PlugIns/mediadevice.appex/Frameworks/WebRTCiOSSDK.framework
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/PlugIns/mediadevice.appex/Frameworks/*/*/*
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1/PlugIns/mediadevice.appex
/usr/bin/codesign -f -v -s $IDENTITY --entitlements entitlements.plist $1


