taskkill /IM "audiorepeater.exe"
start /min "audiorepeater" "C:\Program Files\Virtual Audio Cable\audiorepeater.exe" /input:"Microphone (VIA HD Audio)" /output :"Line 1 (Virtual Audio Cable)" /autostart
start /min "audiorepeater" "C:\Program Files\Virtual Audio Cable\audiorepeater.exe" /input:"Line 2 (Virtual Audio Cable)" /output:"Line 1 (Virtual Audio Cable)" /autostart
start /min "audiorepeater" "C:\Program Files\Virtual Audio Cable\audiorepeater.exe" /input:"Line 2 (Virtual Audio Cable)" /output:"Speakers (VIA HD Audio)" /autostart