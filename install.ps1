param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}

'running with full privileges'

# create link for WezTerm config
'installing wezterm config'
Remove-Item ~/.wezterm.lua
New-Item -Path ~/.wezterm.lua -ItemType HardLink -Value $PSScriptRoot/wezterm/.wezterm.lua

# create link for NeoVim config
'installing NeoVim config'
New-Item -ItemType Directory ~/AppData/Local/nvim/
Remove-Item ~/AppData/Local/nvim/init.lua
New-Item -Path ~/AppData/Local/nvim/init.lua -ItemType HardLink -Value $PSScriptRoot/nvim/init.lua
