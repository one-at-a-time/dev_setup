@echo off

:: to edit this file :-

doskey edit=notepad %userprofile%\alias.cmd


:: Linux commands in cmd

doskey alias   = doskey $*
doskey cat     = type $*
doskey clear   = cls
doskey cp      = copy $*
doskey cpr     = xcopy $*
doskey grep    = find $*
doskey history = doskey /history
doskey kill    = taskkill /PID $*
doskey ls      = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey ps      = tasklist $*
doskey pwd     = cd
doskey rm      = del $*
doskey rmr     = deltree $*
doskey sudo    = runas /user:administrator $*
doskey touch   = New-Item -ItemType File -Name "$*"


:: Linux commands in powershell

goto marker
:: all these lines are skipped (I wanted to comment them out) 
:: ref: https://stackoverflow.com/questions/8526946/commenting-multiple-lines-in-dos-batch-file
doskey /exename=powershell.exe  clear   = cls
doskey /exename=powershell.exe  cp      = copy $*
doskey /exename=powershell.exe  cpr     = xcopy $*
doskey /exename=powershell.exe  grep    = find $*
doskey /exename=powershell.exe  history = doskey /history
doskey /exename=powershell.exe  kill    = taskkill /PID $*
doskey /exename=powershell.exe  ls      = dir $*
doskey /exename=powershell.exe  man     = help $*
doskey /exename=powershell.exe  mv      = move $*
doskey /exename=powershell.exe  ps      = tasklist $*
doskey /exename=powershell.exe  pwd     = cd
doskey /exename=powershell.exe  rm      = del $*
doskey /exename=powershell.exe  rmr     = deltree $*
doskey /exename=powershell.exe  sudo    = runas /user:administrator $*
doskey /exename=powershell.exe  touch   = New-Item -ItemType File -Name $*
:marker


:: git-related commands

doskey gc = git clone $*
doskey ga = git add $*
doskey gb = git branch
doskey gs = git status
doskey gcm = git commit -m $*
doskey glo = git log --oneline
doskey grs = git restore --staged
doskey gck = git checkout $*
doskey gckb = git checkout -b $*
doskey gckd = git checkout development
doskey gmfd = git merge --ff development
doskey gset = git push -u origin HEAD
doskey gpuo = git push -u origin $*

:: my shortcuts -

doskey tuf     = explorer "https://www.youtube.com/@takeUforward"
doskey slack   = explorer "https://app.slack.com/client/T06CRSTP7UJ/C06D4FZUJ3T" 
doskey leet    = explorer "https://leetcode.com/problemset/"
doskey scaler  = explorer "https://www.scaler.com/academy/mentee-dashboard/problems"
doskey link    = explorer "https://www.linkedin.com/in/subhadiproy19/"
doskey all     = explorer "https://mail.google.com/mail/u/1/#all"
doskey chef    = explorer "https://www.codechef.com/contests"
doskey cf      = explorer "https://codeforces.com/problemset"
doskey udemy   = explorer "https://www.udemy.com/home/my-courses/learning/"
doskey guftgu  = explorer "https://www.youtube.com/@TechnicalGuftgu"
doskey algo    = explorer "https://www.youtube.com/watch?v=0IAPZzGSbME&list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O"

:: -------------------------
