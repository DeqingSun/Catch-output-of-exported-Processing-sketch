@REM use a variable as sketch name
@set SKETCH_NAME=Processing_print

@FOR /F %%A IN ('WMIC OS GET LocalDateTime ^| FINDSTR \.') DO @SET B=%%A
@set FORMAT_DATE=%B:~0,4%-%B:~4,2%-%B:~6,2%
@set FORMAT_TIME=%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%

cd application.windows32
%SKETCH_NAME% >> "%~dp0\Win_log_both_stdout_stderr_on_%FORMAT_DATE%_%FORMAT_TIME%.txt" 2>&1
