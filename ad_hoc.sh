# unblocl
rfkill unblock all
# flush
sudo ip addr flush dev wlp0s20f3
sudo ifconfig wlp0s20f3 down
sudo service network-manager stop
sudo iwconfig wlp0s20f3 mode ad-hoc
sudo iwconfig wlp0s20f3 channel 1
sudo iwconfig wlp0s20f3 essid 'djiadhoc'
sudo ip addr add 10.0.0.7/24 broadcast 10.0.0.255 dev wlp0s20f3
sudo ifconfig wlp0s20f3 up
ifconfig
iwconfig
