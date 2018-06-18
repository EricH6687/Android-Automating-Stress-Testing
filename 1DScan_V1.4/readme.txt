1DScan_V1
Eric Huang 2013

This Tool use on BSP01.21 or later version.

Test Step:
1. Enable "Stay awake"
   (Settings > Developer options > Stay awake)
2. Enable "Enable logging"
   (Apps > DataWedge > menu key > settings > Enable logging)
3. Disable "Decode Haptic Feedback"
   (Apps > DataWedge > DWDemo > Scan Params > Decode Haptic Feedback)
4. Connect USB between devices to NB/PC.
5. Run 1DScan.bat
6. Input the number of times that you want to test.
   (If you don't want to set this and keep running the test , please input: 0)
7. Input the decode result to verify the Test Result (e.g. 20535469).
8. After finish the settings , you have 120 seconds to place your DUT , before the script start running.
9. Disconnect USB connection from NB/PC.
10. Place your DUT and Barcode to appropriate position ,then charge the device by AC/DC adapter.

Test description:
Perform 1D Scan repeatedly and record the memory log.

Taking out logs:
1. Connect USB between devices to NB/PC.
2. Run 1DScan-GetLogs.bat
3. check folder "logs"