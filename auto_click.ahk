; Michael
; Auto Click Mouse Button
; [Insert]   Turn on
; [CapsLock] Turn off
; [Delete]   Exit app
;
; https://www.autohotkey.com/
; https://www.autohotkey.com/docs/commands/MsgBox.htm

; in milisecond
delay := 50
Toggle := 0

; MsgBox, "Caps Lock"
CapsLock::
    Toggle := 0
    return

Insert::
    Toggle := NOT Toggle

    Loop
    {
        if (!Toggle )
            break

        Click
        Sleep, delay
    }
    return

Delete::
    ExitApp
    return
