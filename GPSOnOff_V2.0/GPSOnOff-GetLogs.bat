rem GPSOnOff_V2
rem Eric Huang 2013

if not exist logs. (
 mkdir logs
)else (
 del /Q /s .\logs\*
)
adb pull /data/local/tmp/  .\logs
adb shell "cat /data/local/tmp/kernellog.txt" > .\logs\kernellog.txt
rem adb shell "cat /data/local/tmp/logcat.txt" > .\logs\logcat.txt
adb shell "cat /data/local/tmp/procrank-GPSOn.log" > .\logs\procrank-GPSOn.log
adb shell "cat /data/local/tmp/procrank-GPSOff.log" > .\logs\procrank-GPSOff.log
adb shell "cat /data/local/tmp/meminfo-original.log" > .\logs\meminfo-original.log
adb shell "cat /data/local/tmp/meminfo-aftertest.log" > .\logs\meminfo-aftertest.log
adb shell "cat /data/local/tmp/GPSOnOff.log" > .\logs\GPSOnOff.log
adb shell "cat /data/local/tmp/TestResult.txt" > .\logs\TestResult.txt
adb shell "cat /data/local/tmp/FailureRecord.txt" > .\logs\FailureRecord.txt
echo "done"
pause
