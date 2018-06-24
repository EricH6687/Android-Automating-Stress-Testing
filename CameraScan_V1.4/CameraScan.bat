rem CameraScan_V1
rem Eric Huang 2013

adb wait-for-device
adb shell rm -r /data/local/tmp/*
adb shell mkdir -p /data/local/tmp/screenshot
start /MIN adb shell "cat /proc/kmsg > /data/local/tmp/kernellog.txt &"
rem start /MIN adb shell "logcat *:E > /data/local/tmp/logcat.txt &"
start /MIN adb shell "logcat IntentPlugin:D *:S > /data/local/tmp/logcat_datawedge.txt &"
set /p rounds=Input the number of times that you want to test.( If you don't want to set this and keep running the test , please input: 0 ):
set /p decode=Input the decode result to verify the Test Result (e.g. 20535469):
adb push tools/busybox /data/local/tmp
adb shell chmod 777 /data/local/tmp/busybox
adb push CameraScan /data/local/tmp
start adb shell "/data/local/tmp/busybox sh /data/local/tmp/CameraScan > /data/local/tmp/CameraScan.log %rounds% %decode% &"
echo "done"
echo "you can unplug the USB cable + NB now"
echo "you have 120 seconds to place your DUT , before the script start running"
pause
