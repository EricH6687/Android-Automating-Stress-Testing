#BTOnOff_V1
#Eric Huang 2013

if not exist logs. (
 mkdir logs
)else (
 del /Q .\logs\*
)
adb pull /data/local/tmp/  .\logs
adb shell "cat /data/local/tmp/kernellog.txt" > .\logs\kernellog.txt
adb shell "cat /data/local/tmp/logcat.txt" > .\logs\logcat.txt
adb shell "cat /data/local/tmp/procrank-BTOn.log" > .\logs\procrank-BTOn.log
adb shell "cat /data/local/tmp/procrank-BTOff.log" > .\logs\procrank-BTOff.log
adb shell "cat /data/local/tmp/meminfo-original.log" > .\logs\meminfo-original.log
adb shell "cat /data/local/tmp/meminfo-aftertest.log" > .\logs\meminfo-aftertest.log
adb shell "cat /data/local/tmp/BTOnOff.log" > .\logs\BTOnOff.log
adb shell "cat /data/local/tmp/TestResult.txt" > .\logs\TestResult.txt
echo "done"
pause
