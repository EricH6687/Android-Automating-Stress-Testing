rem SnapshotToFull_V1
rem Eric Huang 2013

if not exist logs. (
 mkdir logs
)else (
 del /Q .\logs\*
)

adb pull /data/local/tmp/  .\logs
adb shell "cat /data/local/tmp/scriptlog.log" > .\logs\scriptlog.log
adb shell "cat /data/local/tmp/TestResult.log" > .\logs\TestResult.log
echo "done"
pause
