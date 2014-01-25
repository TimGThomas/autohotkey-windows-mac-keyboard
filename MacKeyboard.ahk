;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

F7::SendInput {Media_Prev}
F8::SendInput {Media_Play_Pause}
F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Eject Key
F20::SendInput {Insert}

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

;F16-19 custom app launchers, see http://www.autohotkey.com/docs/Tutorial.htm for usage info
F16::Run http://twitter.com
F17::Run http://tumblr.com
F18::Run http://www.reddit.com
F19::Run https://facebook.com


; --------------------------------------------------------------
; Text navigation/manipulation shortcuts
; --------------------------------------------------------------

#Left::SendInput {Home}
#Right::SendInput {End}

#Up::SendInput {PgUp}
#Down::SendInput {PgDn}

; The `fn` key seems troublesome, so I'll just remap `Command + Backspace` to `Delete`.
#Backspace::SendInput {Delete}


; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; For some reason, many of these weren't working without `Send`.

; Make Ctrl + S work with cmd (windows) key
#s::Send ^s

; Selecting
#a::^a

; Copying
#c::Send ^c

; Pasting
#v::Send ^v

; Cutting
#x::Send ^x

; Opening
#o::^o

; Finding
#f::Send ^f

; Undo
#z::Send ^z

; Redo
#y::^y

; New tab
#t::^t

; close tab
#w::^w

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
#m::WinMinimize,a


; --------------------------------------------------------------
; Smart quotes (and dashes!)
; --------------------------------------------------------------

; These seem to require sending the unicode value directly.

!]::SendInput {U+2018} ; Single opening (‘)
!+]::SendInput {U+2019} ; Single closing (’)

![::SendInput {U+201C} ; Double opening (“)
!+[::SendInput {U+201D} ; Double closing (”)

!-::SendInput {U+2013} ; en-dash (–)

!+-::SendInput {U+2014} ; em-dash (—)


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + L to @
!l::SendInput {@}

; Map Alt + N to \
+!7::SendInput {\}

; Map Alt + N to ©
!g::SendInput {©}

; Map Alt + o to ø
!o::SendInput {ø}

; Map Alt + 5 to [
!5::SendInput {[}

; Map Alt + 6 to ]
!6::SendInput {]}

; Map Alt + E to €
!e::SendInput {€}

; Map Alt + 8 to {
!8::SendInput {{}

; Map Alt + 9 to }
!9::SendInput {}}

; Map Alt + - to ±
!+::SendInput {±}

; Map Alt + R to ®
!r::SendInput {®}

; Map Alt + N to |
!7::SendInput {|}

; Map Alt + W to ∑
!w::SendInput {∑}

; Map Alt + N to ~
!n::SendInput {~}


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

