rem Camcorder_V1
rem Eric Huang 2013

if not exist logs. (
 mkdir logs
)else (
 del /Q .\logs\*
)
rem if not exist picture. (
rem  mkdir picture
rem )else (
rem  del /Q .\picture\*
rem )

adb pull /data/local/tmp/  .\logs
rem adb shell "cat /data/local/tmp/kernellog.txt" > .\logs\kernellog.txt
adb shell "cat /data/local/tmp/logcat.txt" > .\logs\logcat.txt
rem adb shell "cat /data/local/tmp/procrank-Camcorder.log" > .\logs\procrank-Camcorder.log
adb shell "cat /data/local/tmp/meminfo-original.log" > .\logs\meminfo-original.log
adb shell "cat /data/local/tmp/meminfo-aftertest.log" > .\logs\meminfo-aftertest.log
adb shell "cat /data/local/tmp/Camcorder.log" > .\logs\Camcorder.log
adb shell "cat /data/local/tmp/TestResult.txt" > .\logs\TestResult.txt
rem adb pull mnt/sdcard/DCIM/Camera_video .\video
echo "done"
pause
