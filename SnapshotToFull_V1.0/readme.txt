SnapshotToFull_V1
Eric Huang 2013

Test Step:
1. Make sure the DUT perform with sdcard.
2. Enable "Stay awake"
   ( Settings > Developer options > Stay awake )
3. Connect USB between devices to NB/PC.
4. Run SnapshotToFull.bat
5. Disconnect USB connection from NB/PC and charge the device by AC/DC adapter.


Test Completed:
( When The test is completed , DUT will stay in home screen. )
1. Connect USB between devices to NB/PC.
2. Run SnapshotToFull-GetLogs.bat to get log.
3. open TestResult.log to verify the memory of SD card is full by default delimit. ( less than 20M )
