rem GPSOnOff_V2
rem Eric Huang 2013

adb wait-for-device
adb shell rm -r /data/local/tmp/*
adb shell mkdir -p /data/local/tmp/screenshot
start adb shell "cat /proc/kmsg > /data/local/tmp/kernellog.txt &"
rem start adb shell "logcat *:E > /data/local/tmp/logcat.txt &"
start adb shell "logcat HybridProvider:D *:S > /data/local/tmp/logcat_status.txt &"
set /p rounds=Input the number of times that you want to test.( If you don't want to set this and keep running the test , please input: 0 ):
adb push tools/busybox /data/local/tmp
adb shell chmod 777 /data/local/tmp/busybox
adb push GPSOnOff /data/local/tmp
start adb shell "/data/local/tmp/busybox sh /data/local/tmp/GPSOnOff > /data/local/tmp/GPSOnOff.log %rounds% &"
echo "done"
echo "able to unplug the USB cable + NB now"
pause
