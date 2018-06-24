#BTOnOff_V1
#Eric Huang 2013

adb wait-for-device
adb shell rm -r /data/local/tmp/*
start adb shell "cat /proc/kmsg > /data/local/tmp/kernellog.txt &"
start adb shell "logcat *:E > /data/local/tmp/logcat.txt &"
set /p rounds=Input the number of times that you want to test.( If you don't want to set this and keep running the test , please input: 0 ):
adb push tools/busybox /data/local/tmp
adb shell chmod 777 /data/local/tmp/busybox
adb push BTOnOff /data/local/tmp
start adb shell "/data/local/tmp/busybox sh /data/local/tmp/BTOnOff > /data/local/tmp/BTOnOff.log %rounds% &"
echo "done"
echo "can unplug the USB cable + NB now"
pause
