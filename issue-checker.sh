cat /etc/os-release | grep VARIANT_ID

VARIANT_ID="snapshot20230824.1429"


HoloISO_4.0_OfflineInstaller-20221211_1636-x86_64.iso

Regarding the suspend issue on Ayaneo air pro, I made some tests. Changing handygccs config does not solve the problem.

Step to reproduce:
1. Turn on console in game mode until steam ui is visible
2. Press power button
3. Animation is shown, screen go black and sticks leds start flashing (this happen when console is on sleep mode)
4. Press power button
5. Wait around 5 sec, screen turn up, steam ui is visible and sticks leds stop flashing
6. Press power button
7. Animation is shown, screen go black but sticks leds do not start flashing
8. Console is frozen and unresponsive to any button
9. Pressing power button multiple times cause console to restart, sometimes steam ui get visible for some seconds before restart
10. After restart, sometimes, no animation is visible and the screen stays black, pressing power button turns the screen on and show steam ui
