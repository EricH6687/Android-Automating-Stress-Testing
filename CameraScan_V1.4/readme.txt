CameraScan_V1
Eric Huang 2013

This Tool use on BSP01.21 or later version.

Test Step:
1. Enable "Stay awake"
   (Settings > Developer options > Stay awake)
2. Enable "Enable logging"
   (Apps > DataWedge > setting key > settings > Enable logging)
3. Select "Scanner selection" to "Camera Scanner"
   (Apps > DataWedge > DWDemo > Scanner selection)
4. Select "illumination mode" to "On"
   (Apps > DataWedge > DWDemo > Reader Params > illumination mode)
5. Disable "Decode Haptic Feedback"
   (Apps > DataWedge > DWDemo > Scan Params > Decode Haptic Feedback)
6. Connect USB between devices to NB/PC.
7. Run CameraScan.bat
8. Input the number of times that you want to test.
   (If you don't want to set this and keep running the test , please input: 0)
9. Input the decode result to verify the Test Result (e.g. 20535469).
10. After finish the settings , you have 120 seconds to place your DUT , before the script start running.
11. Disconnect USB connection from NB/PC.
12. Place your DUT and 1D/2D Barcode to appropriate position ,then charge the device by AC/DC adapter.

Test description:
Perform Camera Scan repeatedly and record the memory log.

Taking out logs:
1. Connect USB between devices to NB/PC.
2. Run CameraScan-GetLogs.bat
3. check folder "logs"