#!/bin/zsh

#Credit: Original idea and script disable.sh by pwnsdx https://gist.github.com/pwnsdx/d87b034c4c0210b988040ad2f85a68d3
#*****Work in progress*****
#Disabling unwanted services on macOS 11 Big Sur
#Modifications written in /private/var/db/com.apple.xpc.launchd/ disabled.plist, disabled.501.plist & disabled.205.plist
#Disabling SIP might not be required, still testing.

# user
TODISABLE=()

TODISABLE+=(
'com.apple.biokitaggdd' \
'com.apple.biometrickitd' \
'com.apple.touchbarserver' \
'com.apple.AssetCache.builtin' \
'com.apple.AssetCacheLocatorService' \
'com.apple.AssetCacheManagerService' \
'com.apple.AssetCacheTetheratorService' \
'com.apple.accessibility.MotionTrackingAgent' \
'com.apple.AMPArtworkAgent' \
'com.apple.AMPDeviceDiscoveryAgent' \
'com.apple.AMPLibraryAgent' \
'com.apple.ap.adprivacyd' \
'com.apple.ap.adservicesd' \
'com.apple.ap.promotedcontentd' \
'com.apple.assistant_service' \
'com.apple.assistantd' \
'com.apple.avconferenced' \
'com.apple.BiomeAgent' \
'com.apple.biomesyncd' \
'com.apple.CalendarAgent' \
'com.apple.cloudd' \
'com.apple.cloudpaird' \
'com.apple.cloudphotod' \
'com.apple.CloudPhotosConfiguration' \
'com.apple.CommCenter-osx' \
'com.apple.ContactsAgent' \
'com.apple.CoreLocationAgent' \
'com.apple.familycircled' \
'com.apple.familycontrols.useragent' \
'com.apple.familynotificationd' \
'com.apple.followupd' \
'com.apple.gamed' \
'com.apple.geod' \
'com.apple.homed' \
'com.apple.icloud.findmydeviced' \
'com.apple.icloud.findmydeviced.aps-demo' \
'com.apple.icloud.findmydeviced.aps-development' \
'com.apple.icloud.findmydeviced.aps-production' \
'com.apple.icloud.findmydeviced.findmydevice-user-agent' \
'com.apple.icloud.findmydeviced.ua-services' \
'com.apple.icloud.fmfd' \
'com.apple.icloud.searchpartyd' \
'com.apple.icloud.searchpartyd.accessorydiscoverymanager' \
'com.apple.icloud.searchpartyd.advertisementcache' \
'com.apple.icloud.searchpartyd.beaconmanager' \
'com.apple.icloud.searchpartyd.beaconmanager.agentdaemoninternal' \
'com.apple.icloud.searchpartyd.finderstatemanager' \
'com.apple.icloud.searchpartyd.pairingmanager' \
'com.apple.icloud.searchpartyd.scheduler' \
'com.apple.icloud.searchpartyuseragent' \
'com.apple.iCloudNotificationAgent' \
'com.apple.iCloudUserNotifications' \
'com.apple.imagent' \
'com.apple.imautomatichistorydeletionagent' \
'com.apple.imtransferagent' \
'com.apple.itunescloudd' \
'com.apple.knowledge-agent' \
'com.apple.ManagedClient.cloudconfigurationd' \
'com.apple.ManagedClientAgent.enrollagent' \
'com.apple.Maps.mapspushd' \
'com.apple.Maps.pushdaemon' \
'com.apple.mediaanalysisd' \
'com.apple.mediastream.mstreamd' \
'com.apple.newsd' \
'com.apple.parsec-fbf' \
'com.apple.parsecd' \
'com.apple.passd' \
'com.apple.photoanalysisd' \
'com.apple.photolibraryd' \
'com.apple.progressd' \
'com.apple.protectedcloudstorage.protectedcloudkeysyncing' \
'com.apple.rapportd-user' \
'com.apple.remindd' \
'com.apple.routined' \
'com.apple.SafariCloudHistoryPushAgent' \
'com.apple.SafeEjectGPUAgent' \
'com.apple.screensharing.agent' \
'com.apple.screensharing.menuextra' \
'com.apple.screensharing.MessagesAgent' \
'com.apple.ScreenTimeAgent' \
'com.apple.security.cloudkeychainproxy3' \
'com.apple.sidecar-hid-relay' \
'com.apple.sidecar-relay' \
'com.apple.Siri.agent' \
'com.apple.siri.context.service' \
'com.apple.siriknowledged' \
'com.apple.suggestd' \
'com.apple.telephonyutilities.callservicesd' \
'com.apple.TMHelperAgent' \
'com.apple.TMHelperAgent.SetupOffer' \
'com.apple.UsageTrackingAgent' \
'com.apple.videosubscriptionsd' \
'com.apple.wifi.WiFiAgent')

for agent in "${TODISABLE[@]}"
do
	launchctl bootout gui/501/${agent}
	launchctl disable gui/501/${agent}
done

# system
TODISABLE=()

TODISABLE+=('com.apple.airportd' \
'com.apple.bootpd' \
'com.apple.cloudd' \
'com.apple.cloudpaird' \
'com.apple.cloudphotod' \
'com.apple.CloudPhotosConfiguration' \
'com.apple.CoreLocationAgent' \
'com.apple.coreduetd' \
'com.apple.dhcp6d' \
'com.apple.diagnosticextensions.osx.wifi.helper' \
'com.apple.familycontrols' \
'com.apple.findmymacmessenger' \
'com.apple.followupd' \
'com.apple.FollowUpUI' \
'com.apple.ftp-proxy' \
'com.apple.ftpd' \
'com.apple.GameController.gamecontrollerd' \
'com.apple.icloud.findmydeviced' \
'com.apple.icloud.findmydeviced.aps-demo' \
'com.apple.icloud.findmydeviced.aps-development' \
'com.apple.icloud.findmydeviced.aps-production' \
'com.apple.icloud.findmydeviced.findmydevice-user-agent' \
'com.apple.icloud.findmydeviced.ua-services' \
'com.apple.icloud.fmfd' \
'com.apple.icloud.searchpartyd' \
'com.apple.icloud.searchpartyd.accessorydiscoverymanager' \
'com.apple.icloud.searchpartyd.advertisementcache' \
'com.apple.icloud.searchpartyd.beaconmanager' \
'com.apple.icloud.searchpartyd.beaconmanager.agentdaemoninternal' \
'com.apple.icloud.searchpartyd.finderstatemanager' \
'com.apple.icloud.searchpartyd.pairingmanager' \
'com.apple.icloud.searchpartyd.scheduler' \
'com.apple.icloud.searchpartyuseragent' \
'com.apple.iCloudHelper' \
'com.apple.iCloudNotificationAgent' \
'com.apple.iCloudUserNotificationsd' \
'com.apple.itunescloudd' \
'com.apple.ManagedClient.cloudconfigurationd' \
'com.apple.netbiosd' \
'com.apple.protectedcloudstorage.protectedcloudkeysyncing' \
'com.apple.rapportd' \
'com.apple.screensharing' \
'com.apple.security.cloudkeychainproxy3' \
'com.apple.siri.morphunassetsupdaterd' \
'com.apple.siriinferenced' \
'com.apple.wifianalyticsd' \
'com.apple.wifiFirmwareLoader' \
'com.apple.wifip2pd' \
'com.apple.wifivelocityd')

for daemon in "${TODISABLE[@]}"
do
	sudo launchctl bootout system/${daemon}
	sudo launchctl disable system/${daemon}
done

#location
sudo launchctl bootout user/205/com.apple.geod
sudo launchctl disable user/205/com.apple.geod






# Script 2 

#!/bin/zsh

#*****WORK IN PROGRESS*****
#Disabling unwanted services on macOS 11 Big Sur
#Tested one by one and confirmed to be working, results written in /private/var/db/com.apple.xpc.launchd/
#Disabling SIP is required, mainly for root launch agents/daemons

launchctl bootout gui/501/com.apple.cloudd
launchctl disable gui/501/com.apple.cloudd

launchctl bootout gui/501/com.apple.icloud.searchpartyuseragent
launchctl disable gui/501/com.apple.icloud.searchpartyuseragent

launchctl bootout gui/501/com.apple.security.cloudkeychainproxy3
launchctl disable gui/501/com.apple.security.cloudkeychainproxy3

launchctl bootout gui/501/com.apple.cloudpaird
launchctl disable gui/501/com.apple.cloudpaird

launchctl bootout gui/501/com.apple.protectedcloudstorage.protectedcloudkeysyncing
launchctl disable gui/501/com.apple.protectedcloudstorage.protectedcloudkeysyncing

launchctl bootout gui/501/com.apple.icloud.fmfd
launchctl disable gui/501/com.apple.icloud.fmfd

launchctl bootout gui/501/com.apple.itunescloudd
launchctl disable gui/501/com.apple.itunescloudd

launchctl bootout gui/501/com.apple.iCloudNotificationAgent
launchctl disable gui/501/com.apple.iCloudNotificationAgent

launchctl bootout gui/501/com.apple.Siri.agent
launchctl disable gui/501/com.apple.Siri.agent

launchctl bootout user/501/com.apple.siri.context.service
launchctl disable user/501/com.apple.siri.context.service

launchctl bootout gui/501/com.apple.photolibraryd
launchctl disable gui/501/com.apple.photolibraryd

launchctl bootout gui/501/com.apple.AMPLibraryAgent
launchctl disable gui/501/com.apple.AMPLibraryAgent

launchctl bootout gui/501/com.apple.AMPDeviceDiscoveryAgent
launchctl disable gui/501/com.apple.AMPDeviceDiscoveryAgent

launchctl bootout gui/501/com.apple.AMPArtworkAgent
launchctl disable gui/501/com.apple.AMPArtworkAgent

launchctl bootout user/501/com.apple.geod
launchctl disable user/501/com.apple.geod

launchctl bootout gui/501/com.apple.Maps.mapspushd
launchctl disable gui/501/com.apple.Maps.mapspushd

launchctl bootout gui/501/com.apple.akd
launchctl disable gui/501/com.apple.akd

launchctl bootout gui/501/com.apple.followupd
launchctl disable gui/501/com.apple.followupd

launchctl bootout gui/501/com.apple.ScreenTimeAgent
launchctl disable gui/501/com.apple.ScreenTimeAgent

launchctl bootout gui/501/com.apple.imagent
launchctl disable gui/501/com.apple.imagent

launchctl bootout gui/501/com.apple.newsd
launchctl disable gui/501/com.apple.newsd

launchctl bootout gui/501/com.apple.TMHelperAgent
launchctl disable gui/501/com.apple.TMHelperAgent

launchctl bootout gui/501/com.apple.TMHelperAgent.SetupOffer
launchctl disable gui/501/com.apple.TMHelperAgent.SetupOffer

launchctl bootout user/501/com.apple.CloudPhotosConfiguration
launchctl disable user/501/com.apple.CloudPhotosConfiguration

launchctl bootout user/501/com.apple.biomesyncd
launchctl disable user/501/com.apple.biomesyncd

launchctl bootout gui/501/com.apple.BiomeAgent
launchctl disable user/501/com.apple.BiomeAgent

launchctl bootout gui/501/com.apple.cloudphotod
launchctl disable gui/501/com.apple.cloudphotod

launchctl bootout gui/501/com.apple.icloud.findmydeviced.findmydevice-user-agent
launchctl disable gui/501/com.apple.icloud.findmydeviced.findmydevice-user-agent

launchctl bootout gui/501/com.apple.iCloudUserNotifications
launchctl disable gui/501/com.apple.iCloudUserNotifications

launchctl bootout gui/501/com.apple.assistantd
launchctl disable gui/501/com.apple.assistantd

launchctl bootout gui/501/com.apple.icloud.findmydeviced
launchctl disable gui/501/com.apple.icloud.findmydeviced

launchctl bootout gui/501/com.apple.icloud.searchpartyd
launchctl disable gui/501/com.apple.icloud.searchpartyd

launchctl bootout gui/501/com.apple.ap.adprivacyd
launchctl disable gui/501/com.apple.ap.adprivacyd

launchctl bootout gui/501/com.apple.ap.adservicesd
launchctl disable gui/501/com.apple.ap.adservicesd

launchctl bootout gui/501/com.apple.ap.promotedcontentd
launchctl disable gui/501/com.apple.ap.promotedcontentd

launchctl bootout gui/501/com.apple.gamed
launchctl disable gui/501/com.apple.gamed

launchctl bootout gui/501/com.apple.passd
launchctl disable gui/501/com.apple.passd

launchctl bootout gui/501/com.apple.Maps.pushdaemon
launchctl disable gui/501/com.apple.Maps.pushdaemon

launchctl bootout gui/501/com.apple.videosubscriptionsd
launchctl disable gui/501/com.apple.videosubscriptionsd

launchctl bootout gui/501/com.apple.homed
launchctl disable gui/501/com.apple.homed

launchctl bootout gui/501/com.apple.assistant_service
launchctl disable gui/501/com.apple.assistant_service

launchctl bootout gui/501/com.apple.assistantd
launchctl disable gui/501/com.apple.assistantd

launchctl bootout gui/501/com.apple.parsecd
launchctl disable gui/501/com.apple.parsecd

launchctl bootout gui/501/com.apple.parsec-fbf
launchctl disable gui/501/com.apple.parsec-fbf

launchctl bootout gui/501/com.apple.siriknowledged
launchctl disable gui/501/com.apple.siriknowledged

launchctl bootout gui/501/com.apple.routined
launchctl disable gui/501/com.apple.routined

launchctl bootout gui/501/com.apple.Siri.agent
launchctl disable gui/501/com.apple.Siri.agent

launchctl bootout gui/501/com.apple.knowledge-agent
launchctl disable gui/501/com.apple.knowledge-agent

launchctl bootout gui/501/com.apple.UsageTrackingAgent
launchctl disable gui/501/com.apple.UsageTrackingAgent

launchctl bootout gui/501/com.apple.familycircled
launchctl disable gui/501/com.apple.familycircled

launchctl bootout gui/501/com.apple.familynotificationd
launchctl disable gui/501/com.apple.familynotificationd

launchctl bootout gui/501/com.apple.familycontrols.useragent
launchctl disable gui/501/com.apple.familycontrols.useragent

launchctl bootout gui/501/com.apple.progressd
launchctl disable gui/501/com.apple.progressd

launchctl bootout gui/501/com.apple.photolibraryd
launchctl disable gui/501/com.apple.photolibraryd

launchctl bootout gui/501/com.apple.photoanalysisd
launchctl disable gui/501/com.apple.photoanalysisd

launchctl bootout gui/501/com.apple.suggestd
launchctl disable gui/501/com.apple.suggestd

launchctl bootout gui/501/com.apple.remindd
launchctl disable gui/501/com.apple.remindd

launchctl bootout gui/501/com.apple.mediaanalysisd
launchctl disable gui/501/com.apple.mediaanalysisd

launchctl bootout gui/501/com.apple.imautomatichistorydeletionagent
launchctl disable gui/501/com.apple.imautomatichistorydeletionagent

launchctl bootout gui/501/com.apple.imtransferagent
launchctl disable gui/501/com.apple.imtransferagent

launchctl bootout gui/501/com.apple.avconferenced
launchctl disable gui/501/com.apple.avconferenced

launchctl bootout gui/501/com.apple.CommCenter-osx
launchctl disable gui/501/com.apple.CommCenter-osx

launchctl bootout gui/501/com.apple.screensharing.MessagesAgent
launchctl disable gui/501/com.apple.screensharing.MessagesAgent

launchctl bootout gui/501/com.apple.screensharing.menuextra
launchctl disable gui/501/com.apple.screensharing.menuextra

launchctl bootout gui/501/com.apple.screensharing.agent
launchctl disable gui/501/com.apple.screensharing.agent

launchctl bootout gui/501/com.apple.sidecar-hid-relay
launchctl disable gui/501/com.apple.sidecar-hid-relay

launchctl bootout gui/501/com.apple.sidecar-relay
launchctl disable gui/501/com.apple.sidecar-relay

launchctl bootout gui/501/com.apple.accessibility.MotionTrackingAgent
launchctl disable gui/501/com.apple.accessibility.MotionTrackingAgent

launchctl bootout gui/501/com.apple.mediastream.mstreamd
launchctl disable gui/501/com.apple.mediastream.mstreamd

launchctl bootout gui/501/com.apple.rapportd-user
launchctl disable gui/501/com.apple.rapportd-user

launchctl bootout gui/501/com.apple.CalendarAgent
launchctl disable gui/501/com.apple.CalendarAgent

launchctl bootout gui/501/com.apple.ContactsAgent
launchctl disable gui/501/com.apple.ContactsAgent

launchctl bootout gui/501/com.apple.wifi.WiFiAgent
launchctl disable gui/501/com.apple.wifi.WiFiAgent

launchctl bootout gui/501/com.apple.telephonyutilities.callservicesd
launchctl disable gui/501/com.apple.telephonyutilities.callservicesd

launchctl bootout gui/501/com.apple.SafeEjectGPUAgent
launchctl disable gui/501/com.apple.SafeEjectGPUAgent

launchctl bootout gui/501/com.apple.SafariCloudHistoryPushAgent
launchctl disable gui/501/com.apple.SafariCloudHistoryPushAgent


#root 
sudo launchctl bootout user/205/com.apple.geod
sudo launchctl disable user/205/com.apple.geod

sudo launchctl bootout system/com.apple.siriinferenced
sudo launchctl disable system/com.apple.siriinferenced

sudo launchctl bootout system/com.apple.netbiosd
sudo launchctl disable system/com.apple.netbiosd

sudo launchctl bootout system/com.apple.coreduetd
sudo launchctl disable system/com.apple.coreduetd

sudo launchctl bootout system/com.apple.siriinferenced
sudo launchctl disable system/com.apple.siriinferenced

sudo launchctl bootout system/com.apple.siri.morphunassetsupdaterd
sudo launchctl disable system/com.apple.siri.morphunassetsupdaterd

sudo launchctl bootout system/com.apple.familycontrols
sudo launchctl disable system/com.apple.familycontrols

sudo launchctl bootout system/com.apple.screensharing
sudo launchctl disable system/com.apple.screensharing

sudo launchctl bootout system/com.apple.rapportd
sudo launchctl disable system/com.apple.rapportd

sudo launchctl bootout system/com.apple.wifianalyticsd
sudo launchctl disable system/com.apple.wifianalyticsd

sudo launchctl bootout system/com.apple.diagnosticextensions.osx.wifi.helper
sudo launchctl disable system/com.apple.diagnosticextensions.osx.wifi.helper

sudo launchctl bootout system/com.apple.wifip2pd
sudo launchctl disable system/com.apple.wifip2pd

sudo launchctl bootout system/com.apple.wifivelocityd
sudo launchctl disable system/com.apple.wifivelocityd

sudo launchctl bootout system/com.apple.airportd
sudo launchctl disable system/com.apple.airportd

sudo launchctl bootout system/com.apple.wifiFirmwareLoader
sudo launchctl disable system/com.apple.wifiFirmwareLoader