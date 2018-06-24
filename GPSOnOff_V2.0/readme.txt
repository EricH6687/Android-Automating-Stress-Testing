GPSOnOff_V2
Eric Huang 2013

Test Step:
1. On DUT: Enable "Stay awake"
   (Settings > Developer options > Stay awake)
2. Connect USB between devices to NB/PC.
3. Run GPSOnOff.bat
4. Input the number of times that you want to test.
   (If you don't want to set this and keep running the test , please input: 0)
5. Disconnect USB connection from NB/PC and charge the device by AC/DC adapter.

Test description:
Perform GPS ON/OFF repeatedly and record the memory log.

Taking out logs:
1. Connect USB between devices to NB/PC.
2. Run GPSOnOff-GetLogs.bat
3. check folder "logs"