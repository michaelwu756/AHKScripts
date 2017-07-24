#usehook on
;#NoTrayIcon
!1::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\StraightToTheBank.m4a" --qt-start-minimized
return
!2::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\DropBowsOnEm.m4a" --qt-start-minimized
return
!3::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\RoughNeckBass.m4a" --qt-start-minimized
return
!4::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\SmokeWeedEveryDay.m4a" --qt-start-minimized
return
!5::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\CrystalWeed.m4a" --qt-start-minimized
return
!6::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\SwagSurfin.m4a" --qt-start-minimized
return
!7::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\HorseBeat.m4a" --qt-start-minimized
return
!8::
run, C:\Program Files (x86)\VideoLAN\VLC\vlc.exe "C:\Users\Mike\Downloads\Misc Music\Soundboard\DunkeyBeat.m4a" --qt-start-minimized
return
!`::
run,  %comspec% /c ""taskkill" "/F" "/IM" "vlc.exe"" ,, Hide
return
!^`::
run, %comspec% /c "C:\Users\Mike\Documents\Scripts\AudioRepeaters.bat" ,, Hide
return 