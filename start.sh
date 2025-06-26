echo
echo
echo "Enabling Kext"
cd /Users/horst/Projects/NoBatteryNoProblem.kext
sudo make load

echo
echo "Disabling Restart"

sudo launchctl unload -w -F /System/Library/LaunchDaemons/com.apple.tailspind.plist
sudo launchctl unload -w -F /System/Library/LaunchDaemons/com.apple.spindump.plist

sudo launchctl disable -w -F /System/Library/LaunchDaemons/com.apple.tailspind.plist
sudo launchctl disable -w -F /System/Library/LaunchDaemons/com.apple.spindump.plist

echo
sudo powermetrics cpu --sample-rate 1 --sample-count 1 | grep Average
echo

# Install AppPolice to limit the CPU usage of some apps to avoid restart

# Include these lines on .zshrc:
	# alias turbo='sudo bash /Users/horst/Projects/NoBatteryNoProblem.kext/start.sh'

	# echo
	# echo Type "turbo" to speed things up !
	# echo
