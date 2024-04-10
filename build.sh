./resign.sh WebDriverBuild13.4/Build/Products/Debug-iphoneos/WebDriverAgentRunner-Runner.app
./resign.sh AgentBuild/Build/Products/Debug-iphoneos/Agent-Runner.app
./resign.sh Source13.4Build/Build/Products/Debug-iphoneos/WebDriverAgentRunner-Runner.app
./resign.sh AppiumWebDriverBuild/Build/Products/Debug-iphoneos/WebDriverAgentRunner-Runner.app

rm -rf Payload
unzip ResetProxy.ipa
./resign.sh Payload/ReSetProxy-Runner.app
rm -rf ResetProxy.ipa
zip -qry ResetProxy.ipa Payload

rm -rf Payload
unzip EnterpriseUIAppv1.ipa
./resign.sh Payload/EnterpriseAppUITests-Runner.app
rm -rf EnterpriseUIAppv1.ipa
zip -qry EnterpriseUIAppv1.ipa Payload

rm -rf Payload
unzip EnterpriseUIAppv2.ipa
./resign.sh Payload/EnterpriseAppUITests-Runner.app
rm -rf EnterpriseUIAppv2.ipa
zip -qry EnterpriseUIAppv2.ipa Payload

rm -rf Payload
unzip Screencast.ipa
mv Payload/Ant\ Media.app Payload/AntMedia.app
./resignapp.sh Payload/AntMedia.app
mv Payload/AntMedia.app Payload/Ant\ Media.app
rm -rf Screencast.ipa
zip -qry Screencast.ipa Payload

rm -rf Payload
unzip Screencast_sg.ipa
mv Payload/Ant\ Media.app Payload/AntMedia.app
./resignapp.sh Payload/AntMedia.app
mv Payload/AntMedia.app Payload/Ant\ Media.app
rm -rf Screencast_sg.ipa
zip -qry Screencast_sg.ipa Payload

rm -rf Payload
unzip Screencast_usa.ipa
mv Payload/Ant\ Media.app Payload/AntMedia.app
./resignapp.sh Payload/AntMedia.app
mv Payload/AntMedia.app Payload/Ant\ Media.app
rm -rf Screencast_usa.ipa
zip -qry Screencast_usa.ipa Payload

