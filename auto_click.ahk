; Michaelangle007
; Copyleft 2022
;
; Auto-Click Mouse Button
; Instructions:
;   [Insert]   Turn on
;   [CapsLock] Turn off
;   [Delete]   Exit app
;
; Requires:
; * https://www.autohotkey.com/

; Help
; * https://www.autohotkey.com/docs/commands/MsgBox.htm
; Example:
; MsgBox, "Caps Lock"

; in miliseconds
delay := 50
Toggle := 0

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
