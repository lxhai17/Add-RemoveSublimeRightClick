@echo off
SET st2Path=C:\Program Files\Sublime Text\sublime_text.exe
 
rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime"         /t REG_SZ /v "" /d "Open with Sublime"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime"         /t REG_EXPAND_SZ /v "Icon" /d "%st2Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Sublime\command" /t REG_SZ /v "" /d "%st2Path% \"%%1\"" /f
 
rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime"         /t REG_SZ /v "" /d "Open with Sublime"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime"         /t REG_EXPAND_SZ /v "Icon" /d "%st2Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Sublime\command" /t REG_SZ /v "" /d "%st2Path% \"%%1\"" /f
pause
