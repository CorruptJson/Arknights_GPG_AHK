# Arknights_GPG_AHK
AutoHotkey Script for Arknights hotkeys on Google Play Games Beta

**The hotkey buttons for the skills are only placed properly for 16:9 resolutions.** Users of other resolutions will need to edit the script and adjust the positions (see instructions on changing controls)

## Instructions

### Installation
1. Download and install [Autohotkey V2.0](https://www.autohotkey.com/)
2. Download Arknights_GPG.ahk from the bottom of this post
3. Run the script by opening Arknights_GPG.ahk

### Changing Controls

By default, the controls are:
- X to pause
- Z for fast forward
- C to activate skill
- D to retreat


To change the controls or add other hotkeys, edit the file with a text editor and find this part:

```ahk
; Controls
x::ControlClick ConvertPercent(0.9338, 0.0735) ;pause button
z::ControlClick ConvertPercent(0.8593, 0.0735) ;fast forward button
c::ControlClick ConvertPercent(0.6510, 0.5138) ;skill button
d::ControlClick ConvertPercent(0.4739, 0.3287) ;retreat button
```

The letter at the beginning of each line is the key you press. 

The numbers are the distance from the left and top of the screen as a ratio of the game window. 

*(eg. 0.9, 0.1 would be 90% of the screen away from the left, 10% down from the top.)*

You may need to edit these numbers if you play on resolutions other than 16:9