# FastBoot Management Application

FastBoot Management Application is a system application designed for device-based groups, enabling or disabling FastBoot depending on the desired status.

## App Information

- **Name:** FastBoot Management Application  
- **Description:** Application that enables or disables FastBoot depending on desired status.  
- **Publisher:** Warren Sherwen  
- **Version:** 1.0  
- **Category:** No Category  
- **Company Portal Featured App:** No  
- **Developer:** Warren Sherwen  
- **Owner:** Warren Sherwen  
- **Information URL:** None  
- **Privacy URL:** None  
- **Notes:** No Notes  
- **Logo:** No Logo  

## Installation & Uninstallation

This application must be installed as a **system app** to function correctly in the appropriate registry hive.

### Install Command

```
%windir%\SysNative\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -file FastBootStatus.ps1 -Mode Enable
```

### Uninstall Command

```
%windir%\SysNative\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -file FastBootStatus.ps1 -Mode Disable
```

**Note:** The command uses `%windir%\SysNative\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass` to ensure it runs in the correct registry hive.

## Installation Details

- **Installation time required:** ~2 minutes  
- **Allow available uninstall:** No  
- **Install behavior:** System  
- **Device restart behavior:** App install may force a device restart  

## Return Codes

| Code  | Meaning        |
|-------|--------------|
| 0     | Success      |
| 1707  | Success      |
| 3010  | Soft reboot  |
| 1641  | Hard reboot  |
| 1618  | Retry        |

## System Requirements

| Requirement                     | Details |
|----------------------------------|---------|
| **OS Architecture**             | x86, x64 |
| **Minimum OS Version**          | Windows 10 1607 |
| **Disk Space Required**         | 5 MB |
| **Physical Memory Required**    | None |
| **Logical Processors Required** | None |
| **Minimum CPU Speed**           | None |
| **Additional Rules**            | None |

## Detection Rules

The application uses a **custom detection script** to verify installation status. Ensure you upload the detection script to this repository.

---

## How to Package the Application

1. Download the `FastBootStatus.intunewin` release frin guthub.
2. Upload to intune using the defined settings from above.
3. Use a **custom detection script** to validate installation.

---

## Contributions

Contributions are welcome! If you have any suggestions, feel free to submit a pull request.

