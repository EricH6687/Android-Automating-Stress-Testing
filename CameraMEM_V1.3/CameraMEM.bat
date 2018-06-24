#CameraMEM_V1
#Eric Huang 2013

adb wait-for-device
adb shell rm -r /data/local/tmp/*
adb shell rm -r /mnt/sdcard/DCIM/Camera/*
adb shell mkdir -p mnt/sdcard/DCIM/Camera_picture
adb shell rm -r /mnt/sdcard/DCIM/Camera_picture/*
start adb shell "cat /proc/kmsg > /data/local/tmp/kernellog.txt &"
start adb shell "logcat *:E > /data/local/tmp/logcat.txt &"
set /p rounds=Input the number of times that you want to test.( If you don't want to set this and keep running the test , please input: 0 ):
set /p savepictures=Input 1 or 0 to select that you want to save the pictures or not. ( yes=1 no=0 ):
adb push tools/busybox /data/local/tmp
adb shell chmod 777 /data/local/tmp/busybox
adb push CameraMEM /data/local/tmp
start adb shell "/data/local/tmp/busybox sh /data/local/tmp/CameraMEM > /data/local/tmp/CameraMEM.log %rounds% %savepictures% &"
echo "done"
echo "can unplug the USB cable + NB now"
pause
