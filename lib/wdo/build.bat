@echo off
@cls
@set    path=c:\harbour\bin
@set include=c:\harbour\include

del wdo_lib.hrb


@echo =================
@echo Building WDO Lib
@echo =================

harbour wdo_lib.prg /n /w /gh

if errorlevel 1 goto compileerror
goto exit

:compileerror

@echo Error Compile
@echo =============

pause

:exit


