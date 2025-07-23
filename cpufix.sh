# Install the dependencies
# sudo apt install msr-tools mbpfan cpufrequtils

# Limit the CPU with cpufreq: 
# sudo vi /etc/default/cpufrequtils
#     GOVERNOR="powersave"
#     MIN_SPEED="1.6GHz"
#     MAX_SPEED="2.4GHz"

# Set agressive cooling:
# sudo vi /etc/mbpfan.conf 
#     min_fan1_speed = 2000   
#     max_fan1_speed = 6200   
#     low_temp = 40  #Defaults 63
#     high_temp = 45 #Defaults 66
#     max_temp = 70  #Defaults 86

# sudo systemctl enable mbpfan
# sudo systemctl restart mbpfan

# Script

# Load the msr module
sudo modprobe msr

# This is a common and proven method for disabling BD_PROCHOT:
# r represents the current MSR value, s is a hex string, f is the new decimal value.
# This specifically clears the first bit (bit 0) which is commonly associated with BD_PROCHOT.
r=`sudo rdmsr 0x1FC`
s='0x'$r''
f=$(($s&0xFFFFE)) # This masks out the LSB
sudo wrmsr 0x1FC "obase=16;$f" | bc

sudo cpufreq-set -g powersave -u 1.6Ghz

sudo cpufreq-info

