# Windows-Optimization-Software

This program is a simple .bat script that automatically adds entries to the Windows registry. The script uses the reg add utility to add or modify specific values ​​in the registry, which can be useful for configuring applications or the operating system.

## How it works

The script runs subsequent reg add commands that add or overwrite values ​​in the registry hive. By default, entries are added to the user hive (HKCU\Software\MyProgram), but you can customize the paths, values, and data types to suit your needs.

### Sample entry

bash
reg add "HKCU\Software\MyProgram" /v Entry1 /t REG_SZ /d "Value1" /f

HKCU – HKEY_CURRENT_USER, the registry path for the current user.
/v Entry1 – the name of the value being added.
/t REG_SZ – the type of value (in this case, a string).
/d "Value1" – the value assigned to the entry.
/f – forces the addition of the entry without confirmation.

## Requirements
Operating System: Windows10/11.
Administrator privileges may be required when modifying system keys (e.g., in the HKLM – HKEY_LOCAL_MACHINE branch).

## Usage Instructions
Download the `.zip` file, save it on your computer, and extract it.
Open the `WindowsOptimizationSoftware.bat` file as an administrator (right-click the command line icon and select "Run as administrator").
The script will automatically add entries to the registry. Upon completion, it will display confirmation messages.
Notes
Safety: Adding entries to the registry may affect system stability. It's advisable to back up the registry before making changes to revert if issues arise. You can back up using the regedit tool.
Registry Backup
To back up the registry:

Press `Win + R`, type regedit, and press Enter to open the Registry Editor.
Select `File -> Export`, then choose a location to save the backup.
To restore the registry, select `File -> Import`.
Recommendations
Test in a Testing Environment: Before using the script on a production system, test it in a testing environment to ensure it works as expected.
Careful Registry Editing: Editing the registry can affect the operating system's functionality. Make sure you fully understand what you want to achieve before making changes.
#### Author
The script was created to automate the process of adding entries to the Windows registry. You are free to modify and customize it to suit your needs.
