@echo off
set source=F:\Palworld\Pal\Saved\SaveGames
set destination=F:\Palworld backup\SaveGames_Backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%

xcopy "%source%" "%destination%" /E /I /H /Y

echo Backup completed successfully.

