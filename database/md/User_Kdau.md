From Stardew Valley Wiki

I mod and I explore the game code. Find me on Discord or wherever snack foods are sold.

## Contents

- 1 Notes on Android SMAPI modding
  
  - 1.1 Tools
  - 1.2 Decompiling
  - 1.3 Coding
  - 1.4 Deployment
  - 1.5 Testing

## Notes on Android SMAPI modding

These notes are based on my experiences with making my mods work on Android in April 2020. Linux is my PC OS; adjustments will be needed for Mac or Windows.

### Tools

- Android Debug Bridge (`adb`) for communication between your development PC and your Android device
- scrcpy for viewing and controlling your Android device screen from your PC
- ILSpy Console (`ilspycmd`) for decompiling the Android port of the game

### Decompiling

- To decompile the Android port of the game (after installing `adb` and `ilspycmd` and changing to a new directory):

```
adb pull /storage/self/primary/StardewValley/smapi-internal/StardewValley.dll ./
adb pull /storage/self/primary/StardewValley/smapi-internal/StardewValley.GameData.dll ./
adb pull /storage/self/primary/StardewValley/smapi-internal/MonoGame.Framework.dll ./
adb pull /storage/self/primary/StardewValley/smapi-internal/xTile.dll ./
ilspycmd -p -o . StardewValley.dll
mkdir StardewValley.GameData
ilspycmd -p -o StardewValley.GameData StardewValley.GameData.dll
```

### Coding

- The Android port of SMAPI provides workarounds to keep many of the common game methods and properties working despite the differences in the Android port of the base game. Nevertheless, check the Android source carefully if you rely on menus/input (heavily rewritten) or networking/multiplayer (dummied out).
- Lots of `System.*` assemblies are missing in the Android version of Mono, so check the Xamarin.Android API list from Microsoft before relying on one.
- Mobile users can save at any time and restore either from their save point or the beginning of the day. As such, don't rely on save/load events and day end/start events occurring in the regular sequence. Choose one or another depending on whether you are wrangling data (load/save) or updating the world for passage of time (day end/start).
- All taps will register as the `MouseLeft` button, so testing `IsUseToolButton` vs. `IsActionButton` will not work. Each tap does update the cursor position to its location, however.
- Dialog boxes (for the Latin alphabet) are scaled quite large on Android, so there is less room to fit text, question responses, etc., than on PC. Their scaling is also fixed, ignoring the player's current overworld zoom, unlike on PC. Succinctness is the order of the day. Manual line breaks (`^`) are not likely to work as intended.

### Deployment

- To copy your deployed PC mod folder to the device for initial install:

```
adb push $STARDEW_PATH/Mods/$MOD_NAME /storage/self/primary/StardewValley/Mods/
```

- To update files on the device from your PC mod folder:

```
adb push $STARDEW_PATH/Mods/$MOD_NAME/* /storage/self/primary/StardewValley/Mods/$MOD_NAME/
```

- To update just the mod DLL from your build directory (while in that directory):

```
adb push bin/Debug/$MOD_NAME.dll /storage/self/primary/StardewValley/Mods/$MOD_NAME/
```

### Testing

- To pipe the SMAPI console output to a terminal on your PC:

```
adb shell tail -fn9999 /storage/self/primary/StardewValley/ErrorLogs/SMAPI-latest.txt
```

- To display the Android device screen on your PC:

```
scrcpy
```

- Pipe the Android audio to your PC via Bluetooth if it is available to you. If not, USBaudio may work for you; I have not tried it.
- There are several control schemes on mobile; be sure to test with more than one if your mod handles input events.

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User:Kdau&amp;oldid=115698"