rem SnapshotToFull_V1
rem Eric Huang 2013

adb wait-for-device
adb shell rm -r /data/local/tmp/*
rem start adb shell "cat /proc/kmsg > /data/local/tmp/kernellog.txt &"
adb push tools/busybox /data/local/tmp
adb shell chmod 777 /data/local/tmp/busybox
adb push RecordVideo /data/local/tmp
adb push CapturePhoto /data/local/tmp
adb push Communication /data/local/tmp
start adb shell "/data/local/tmp/busybox sh /data/local/tmp/RecordVideo &"
start adb shell "/data/local/tmp/busybox sh /data/local/tmp/CapturePhoto &"
echo "done"
echo "able to unplug the USB cable + NB now"
pause
