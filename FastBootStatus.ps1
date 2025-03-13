Param(
	[Parameter(Mandatory=$true)]
	[ValidateSet("Disable", "Enable")]
	[String[]]
	$Mode
)
# Author: Warren Sherwen
# Verison: 1.0

# Defines the log file location.
$Logfile = "$env:windir\Temp\Logs\fastbootstatus.log"

# LogWrite Function.
Function LogWrite{
	Param ([string]$logstring)
	Add-content $Logfile -value $logstring
	write-output $logstring
}

function Get-TimeStamp {
	return "[{0:dd/MM/yy} {0:HH:mm:ss}]" -f (Get-Date)
}

if (!(Test-Path "$env:windir\Temp\Logs\")) {
	mkdir $env:windir\Temp\Logs
	LogWrite "$(Get-TimeStamp): Fastboot script has started."
	LogWrite "$(Get-TimeStamp): Log directory created."
	} else {
		LogWrite "$(Get-TimeStamp): Fastboot script has started."
		LogWrite "$(Get-TimeStamp): Log directory exists."
	}

$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power"
$Name = "HiberbootEnabled"

If ($Mode -eq "Disable") {
    $value = "0"
    LogWrite "$(Get-TimeStamp): Disabling Fastboot."
    If (!(Test-Path $Path)){
        New-Item -Path $Path -Force | Out-Null
        New-ItemProperty -Path $Path -Name $Name -Value $value -PropertyType DWORD -Force | Out-Null
    } ELSE {
        New-ItemProperty -Path $Path -Name $Name -Value $value -PropertyType DWORD -Force | Out-Null
    }
    LogWrite "$(Get-TimeStamp): Fastboot disabled."
}

If ($Mode -eq "Enable") {
    $value = "1"
    LogWrite "$(Get-TimeStamp): Enabling Fastboot."
    If (!(Test-Path $Path)){
        New-Item -Path $Path -Force | Out-Null
        New-ItemProperty -Path $Path -Name $Name -Value $value -PropertyType DWORD -Force | Out-Null
    } ELSE {
        New-ItemProperty -Path $Path -Name $Name -Value $value -PropertyType DWORD -Force | Out-Null
    }
    LogWrite "$(Get-TimeStamp): Fastboot enabled."
}