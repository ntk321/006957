@echo off
rem This file is automatically generated.

if "%1" == "run2" goto run2
if "%1" == "run" goto run
if "%1" == "run3" goto run3
if "%1" == "long" goto long
if "%1" == "run1" goto run1
goto run

:run2
@echo on
ruby .\nearest.rb -d=2 50 | ruby ..\histogram.rb -w=0.02
@echo off
goto end

:run
@echo on
ruby .\nearest.rb 50 | ruby ..\histogram.rb -w=0.1
@echo off
goto end

:run3
@echo on
ruby .\nearest.rb -d=3 50 | ruby ..\histogram.rb -w=0.02
@echo off
goto end

:long
@echo on
ruby .\nearest.rb 1000 | ruby ..\histogram.rb -w=0.1 -u=10
@echo off
goto end

:run1
@echo on
ruby .\nearest.rb -d=1 50 | ruby ..\histogram.rb -w=0.002
@echo off
goto end

:end