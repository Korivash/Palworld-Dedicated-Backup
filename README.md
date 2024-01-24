# Backup Script for Dedicated Server Player Data

This script is designed to backup player data from your dedicated server. It's particularly useful for games like Palworld, where player data is stored in specific folders. The script creates a backup of the specified source directory to a destination directory with a timestamp.

# Requirements
Windows operating system
Batch scripting support (typically available in all modern Windows versions)

# Setup Instructions
Locate your player data directory: This is the folder where your game saves its player data. For example, F:\Palworld\Pal\Saved\SaveGames.

Choose a backup location: Select a folder where you want the backups to be stored. For example, F:\Palworld backup.

Edit the script: Replace the source and destination variables in the script with your actual directories.
```@echo off
set source=[Your player data directory]
set destination=[Your backup directory]\SaveGames_Backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%

xcopy "%source%" "%destination%" /E /I /H /Y

echo Backup completed successfully.
```

# How to use
Run the script manually: Double-click on start.bat to run the backup manually.

Automate using Windows Task Scheduler:

Open Windows Task Scheduler.
Create a new task and set the trigger to your preference (e.g., daily, at system startup).
For the action, choose "Start a program" and browse to select your start.bat file.
Save the task. It will now automatically run the script as per the schedule.

# Customization Example
If your player data is located in D:\Games\MyGame\SavedData and you want to backup to E:\Backups\MyGame, modify the script like this:
```@echo off
set source=D:\Games\MyGame\SavedData
set destination=E:\Backups\MyGame\Backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%

xcopy "%source%" "%destination%" /E /I /H /Y

echo Backup completed successfully.
```

- Please Star if you download and enjoy as it helps me out!
