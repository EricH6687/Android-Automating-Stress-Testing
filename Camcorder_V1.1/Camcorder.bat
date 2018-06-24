rem Camcorder_V1
rem Eric Huang 2013

adb wait-for-device
adb shell rm -r /data/local/tmp/*
adb shell rm -r /mnt/sdcard/DCIM/Camera/*
adb shell mkdir -p /data/local/tmp/screenshot
rem adb shell mkdir -p mnt/sdcard/DCIM/Camera_video
rem adb shell rm -r /mnt/sdcard/DCIM/Camera_video/*
rem start adb shell "cat /proc/kmsg > /data/local/tmp/kernellog.txt &"
start /MIN adb shell "logcat -v time *:E > /data/local/tmp/logcat.txt &"
rem set /p rounds=Input the number of times that you want to test.( If you don't want to set this and keep running the test , please input: 0 ):
rem set /p savevideos=Input 1 or 0 to select that you want to save the pictures or not. ( yes=1 no=0 ):
adb push tools/busybox /data/local/tmp
adb shell chmod 777 /data/local/tmp/busybox
adb push Camcorder /data/local/tmp
rem start adb shell "/data/local/tmp/busybox sh /data/local/tmp/Camcorder > /data/local/tmp/Camcorder.log %rounds% %savevideos% &"
start /MIN adb shell "/data/local/tmp/busybox sh /data/local/tmp/Camcorder > /data/local/tmp/Camcorder.log &"
echo "done"
echo "can unplug the USB cable + NB now"
pause
