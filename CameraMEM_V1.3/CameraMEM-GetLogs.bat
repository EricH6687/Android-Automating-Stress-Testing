#CameraMEM_V1
#Eric Huang 2013

if not exist logs. (
 mkdir logs
)else (
 del /Q .\logs\*
)
if not exist picture. (
 mkdir picture
)else (
 del /Q .\picture\*
)
adb pull /data/local/tmp/  .\logs
adb shell "cat /data/local/tmp/kernellog.txt" > .\logs\kernellog.txt
adb shell "cat /data/local/tmp/logcat.txt" > .\logs\logcat.txt
adb shell "cat /data/local/tmp/procrank-CameraMEM.log" > .\logs\procrank-CameraMEM.log
adb shell "cat /data/local/tmp/meminfo-original.log" > .\logs\meminfo-original.log
adb shell "cat /data/local/tmp/meminfo-aftertest.log" > .\logs\meminfo-aftertest.log
adb shell "cat /data/local/tmp/CameraMEM.log" > .\logs\CameraMEM.log
adb shell "cat /data/local/tmp/TestResult.txt" > .\logs\TestResult.txt
adb pull mnt/sdcard/DCIM/Camera_picture .\picture
echo "done"
pause
