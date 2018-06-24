rem 1DScan_V1
rem Eric Huang 2013

if not exist logs. (
 mkdir logs
)else (
 del /Q .\logs\*
)
adb pull /data/local/tmp/  .\logs
adb shell "cat /data/local/tmp/kernellog.txt" > .\logs\kernellog.txt
adb shell "cat /data/local/tmp/logcat.txt" > .\logs\logcat.txt
adb shell "cat /data/local/tmp/procrank-1DScan.log" > .\logs\procrank-1DScan.log
adb shell "cat /data/local/tmp/meminfo-original.log" > .\logs\meminfo-original.log
adb shell "cat /data/local/tmp/meminfo-aftertest.log" > .\logs\meminfo-aftertest.log
adb shell "cat /data/local/tmp/1DScan.log" > .\logs\1DScan.log
adb shell "cat /data/local/tmp/TestResult.txt" > .\logs\TestResult.txt
adb shell "cat /data/local/tmp/scan_output.txt" > .\logs\scan_output.txt
echo "done"
pause
