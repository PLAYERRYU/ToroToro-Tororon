echo off

rem ----------------------

set ID_LOG_FILE_NAME=root_date\ID_setting_old_log.txt
set BAN_USE_DATE_FILE=root_date\service_date\security_txt\ID_BAN.txt
set DATE_FILE=root_date\service_date\torotoro_cache.tro




rem -----------------------------
rem --------------------

rem 最終確認
cls
echo -------------------------------------------------------------------------------------------------
echo 初期化を実行します。設定ID。ログファイルの設定場所など、個人で設定したものを初期状態に戻します
echo -------------------------------------------------------------------------------------------------
echo ・初期化を実行する場合は半角モードで「Y」を押してください
echo ・初期化を行わない場合は半角モードで「N」を押してください

timeout 1 >nul

choice
if errorlevel 2 goto :END
if errorlevel 1 goto :DO


:END

exit

:DO

echo [10]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [9]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [8]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [7]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [6]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [5]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [4]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [3]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [2]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

echo [1]秒後に初期化を実行します。初期化を止める場合はウィンドウを閉じてください
echo この処理はあとからキャンセルできません。ご注意ください。
timeout 1 >nul
cls

rem -----------------------------------------------------------

rem ちょっとカッコよく？するために少しだけ文字を流す。別に必要ない。

echo 初期化を実行します
timeout 1 >nul
cls

echo ID初期化を実行します
echo 準備中.
timeout 2 >nul
cls

echo ID初期化を実行します
echo 準備中..
timeout 1 >nul
cls

echo ID初期化を実行します
echo 準備中...
timeout 1 >nul
cls 

echo ID初期化を実行します
echo 準備中
timeout 2 >nul
cls 

cls

echo ID初期化を実行します
echo 準備中.
timeout 3 >nul

cls

timeout 1 >nul


start root_date\main_program\tyuuni.bat





rem ここから初期化していく
rem 実際の初期化はここから↓


rem かっこよく？するために前の名前を一瞬表示させる機能のために関数に代入しておく

(
    SET /P OLD_YOUR_USEING_ID=
)< root_date\ID_setting.txt

echo -ユーザーID→%OLD_YOUR_USEING_ID%を初期化中　
timeout 10 >nul

rem　ログとして以前に使っていたものを残す用

echo ----------------------------->>%ID_LOG_FILE_NAME%
date /t>>%ID_LOG_FILE_NAME%
time /t>>%ID_LOG_FILE_NAME%
echo %OLD_YOUR_USEING_ID%>>%ID_LOG_FILE_NAME%
echo ----------------------------->>%ID_LOG_FILE_NAME%

rem 初期化用テキスト

echo "IDが初期状態です。設定を行ってください。">root_date\ID_setting.txt
echo ----------------------------->>%DATE_FILE%
date /t>>%DATE_FILE%
time /t>>%DATE_FILE%
echo %OLD_YOUR_USEING_ID%>>%DATE_FILE%
echo ----------------------------->>%DATE_FILE%

rem -----------------------------------------------------------------------
rem ログファイル01の設定を初期化
rem -------------------------------------------------------------------

(
    SET /P OLD_YOUR_LOG_01=
)< root_date\log_file_setting\log1_setting.txt

echo "未設定です" >root_date\log_file_setting\log1_setting.txt

echo ----------------------------->>root_date\log_file_setting\log1_setting_old.txt
echo %OLD_YOUR_LOG_01%>>root_date\log_file_setting\log1_setting_old.txt

rem -----------------------------------------------------------------------
rem ログファイル02の設定を初期化
rem -------------------------------------------------------------------

(
    SET /P OLD_YOUR_LOG_02=
)< root_date\log_file_setting\log2_setting.txt

echo "未設定です" >root_date\log_file_setting\log2_setting.txt

echo ----------------------------->>root_date\log_file_setting\log2_setting_old.txt
echo %OLD_YOUR_LOG_02%>>root_date\log_file_setting\log2_setting_old.txt


