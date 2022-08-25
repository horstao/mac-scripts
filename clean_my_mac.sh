clear 

echo ""
echo "=================="
echo "Bash Mac Cleaner"
echo "=================="


echo ""
echo "Closing Apps"
sudo pkill -f hrome
sudo pkill -f afari
sudo pkill -f irefox
sudo pkill -f ublime
sudo pkill -f ransmission
sudo pkill -f orrent
sudo pkill -f sCode
sudo pkill -f ppStore
sudo pkill -f ppstore


echo "Checking Disk ... "
sudo diskutil verifyVolume /
if [ $? -eq 0 ]
then
  echo "Disk OK !"
else
  echo ""
  echo "=================="
  echo "Disk Fix Required " >&2
  sudo diskutil repairVolume /
  echo ""
  echo "Disk Fix Done! " >&2
  echo "=================="
fi

echo ""
echo "Cleaning Time Machine Snapshots ..."
sudo tmutil disablelocal

echo ""
echo "Cleaning System Cache ..."
sudo rm -rf /Library/Caches/* 

echo ""
echo "Cleaning System Logs ..."
sudo rm -rf /Library/Logs/* 

echo ""
echo "Removing Mail Attachments ..."
sudo rm -rf ~/Library/Containers/com.apple.mail/Data/Library/Mail\ Downloads/*

echo ""
echo "Removing Incomplete Downloads ..."
sudo rm -rf ~/Music/iTunes/iTunes Media/Downloads

echo ""
echo "Run Maintenance Scripts ..."
sudo periodic daily weekly monthly

echo ""
echo "Rebuild Launch Services ... "
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

echo ""
echo "Flush DNS Cache ... "
dscacheutil -flushcache
sudo killall -HUP mDNSResponder

