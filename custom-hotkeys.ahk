#Requires AutoHotkey v2.0

; Open Terminal (WSL2 Ubuntu on Windows Terminal)
#Enter::{
  Run "ubuntu.exe"
  return
}

; Open current active app
#q::{
  WinClose("A")
  return
}

; Toggle current app to Fullscreen
#f::{
  win_state := WinGetMinMax("A")
  if win_state = 1 {
    WinRestore("A")
  } else {
    WinMaximize("A")
  }
  return
}

; Open select-area to crop screenshot
#o::{
  Run "explorer.exe ms-screenclip:"
  return
}

; Open Mail app (Outlook)
#m::{
  Run "outlook.exe"
  return
}

; Open Browser app (Chrome)
#b::{
  Run "chrome.exe -homepage `"about:blank`""
  return
}

; Open VS Code
#c::{
  Run "C:\Users\AAytac\AppData\Local\Programs\Microsoft VS Code\bin\code"
  return
}

; Open Slack
#s::{
  Run "C:\ProgramData\AAytac\slack\slack.exe"
  return
}

; Open Teams
#t::{
  Run "C:\ProgramData\AAytac\Microsoft\Teams\current\Teams.exe"
  return
}

; Open help page
#h::{
  Run "chrome.exe /new-window file:///C:/Users/AAytac/Documents/AutoHotkey/shotcuts.html"
  return
}
