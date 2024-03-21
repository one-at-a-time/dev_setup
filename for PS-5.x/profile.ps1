# F7     = history
# Alt+F7 = history -c
# F8     = Ctrl+R

# -----------------------------------------
# my-setups

# theme for powershell7
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\froczh.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\night-owl.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\atomic.omp.json" | Invoke-Expression

# ----------------------------------------
# my-sites aliases

# 2 ways to do this :-
# a one-line way to define a function + setting an alias to open StackOverflow with an optional argument for search query
function so  ($q) {start http://stackoverflow.com/search?q=$q}

# first defining a function and later aliasing it
function openTakeUForwardYTChannel {
    Start-Process -FilePath "https://www.youtube.com/@takeUforward"
}
Set-Alias tuf openTakeUForwardYTChannel

# others, in one line each -
function slack  {start https://app.slack.com/client/T06CRSTP7UJ/C06D4FZUJ3T}
function leet   {start https://leetcode.com/problemset/}
function scaler {start https://www.scaler.com/academy/mentee-dashboard/problems}
function link   {start https://www.linkedin.com/in/subhadiproy19/}
function all    {start https://mail.google.com/mail/u/1/#all}
function chef   {start https://www.codechef.com/contests}
function cf     {start https://codeforces.com/problemset}
function udemy  {start https://www.udemy.com/home/my-courses/learning/}
function guftgu {start https://www.youtube.com/@TechnicalGuftgu}
function algo   {start https://www.youtube.com/watch?v=0IAPZzGSbME"&"list=PLDN4rrl48XKpZkf03iYFl-O29szjTrs_O}

# -------------------------------------------

# my-commands aliases

# short-cut to get all oh-my-posh themes displayed on terminal in the current font
# makes it easy to see and then choose which one looks better in the present setup
Set-Alias themes Get-PoshThemes

# shortcut to apply the oh-my-posh theme
Set-Alias iconize Set-TerminalIconsTheme

# deletes any directory without any fuss
function rmd    ($dirName)  {Remove-Item -Path $dirName -Force -Recurse}


# window-to-linux aliasing
function touch  ($fname)    {New-Item -ItemType File -Name "$fname"}



# ease of navigation: 
function  ..    {Set-Location ..}
function  ...   {Set-Location ..\..}
function  ....  {Set-Location ..\..\..}
function  ..... {Set-Location ..\..\..\..}

# -------------------------------------------

# git-related aliases
function  ga ($changes)  {git add $changes}
#--------------------------------------------------------------
# https://stackoverflow.com/questions/24882210/how-do-i-remove-or-replace-a-built-in-alias-in-powershell
if(Test-Path alias:gc) { del alias:gc -Force }
# the below command - "Remove-Alias is not recognized in PowerShell-5, but in PowerShell-7, hence I've commented it here
# if (Get-Alias -Name "gc" -ErrorAction SilentlyContinue) { Remove-Alias -Name "gc" -Force }
#------------------------------------------------------
function  gc ($repo)      {git clone $repo} 
function  gb              {git branch}
function  gs              {git status}
function  gcm  ($message) {git commit -m $message}
function  glo             {git log --oneline}
function  grs             {git restore --staged}
function  gck  ($branch)  {git checkout $branch}
function  gckb ($branch)  {git checkout -b $branch}
function  gckd            {git checkout development}
function  gmfd            {git merge --ff development}
function  gset            {git push -u origin HEAD}
function  gpuo ($branch)  {git push -u origin $branch}

# ---------------------------------------