@echo off

goto :ZATUDAN




:ZATUDAN

rem　雑談用の保存先ファイル名を関数に設定する。

(
    SET /P SAVE_FILE_NAME=
)< root_date\log_file_setting\log1_setting.txt

goto :TOP


:SHIRITORI

rem　雑談用の保存先ファイル名を関数に設定する。

(
    SET /P SAVE_FILE_NAME=
)< root_date\log_file_setting\log2_setting.txt

goto :TOP
 


cls

:TOP

rem ここからログデーターの中身を関数に入れる

@echo off


for %%A in (%SAVE_FILE_NAME%) do set FARST_LOG_DATE=%%~zA

timeout 08




cls

for %%B in (%SAVE_FILE_NAME%) do set SECOND_LOG_DATE=%%~zB


rem if 関数（ここが文字のやつ）==関数（ここに数秒前のやつ）

if "%FARST_LOG_DATE%"=="%SECOND_LOG_DATE%" (
  goto NO
) else (
  goto YES
)



:NO
echo 更新はありません

goto TOP


:YES
start "" /min "root_date\main_program\notification_sound.bat %

echo 更新がありました

goto TOP
