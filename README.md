# logrem using .ps1/.sh script

This project is built for preparing powershell/shell scripts for both Windows and Linux operating systems in order to delete log file in case if it reaches a defined threshold size limit.

Please find the description below for each script

**logrem.ps1**
---
If end user is using Windows operating system then this file is used.
- For running this file, user needs to have two things : path of the log file and the maximum threshold file size (in Kilobytes)
- After that, where the logrem.ps1 file is present user needs to open command prompt or powershell in that location
- There user needs to type
```powershell ./logrem.ps1 -path=C:/Path/Of/The/File/<FILENAME_WITH_EXTENSION> -maxSize=1024```


**logrem.sh**
---
If end user is using Linux operating system then this file is used
- For runnning this file, user needs to have two things : path of the log file and the maximum threshold file size (in Bytes)
- After that, where the logrem.sh file is present user needs to open terminal in that location
- There user needs to run the below command
```bash ./logrem.sh -p /path/of/log/file/<FILENAME_WITH_EXTENSION> -m 1048546```


---

After executing the commands the utility will remove the log files if it exceeds the threshold file size limit
