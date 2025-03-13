$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power"
$valueName = "HiberbootEnabled"
$expectedValue = "0"

if (Test-Path $registryPath) {
    $actualValue = (Get-ItemProperty -Path $registryPath -Name $valueName).$valueName
    if ($actualValue -eq $expectedValue) {
            Write-Host "Fastboot disabled"
        exit 0
    } else {
                Write-Host "Fastboot enabled"
        exit 1
    }
} else {
            Write-Host "Fastboot enabled"
        exit 1
}
