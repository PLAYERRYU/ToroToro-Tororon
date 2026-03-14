@echo off

(
    SET /P SEARCH_ID=
)< root_date\ID_setting.txt

echo 01


YOUR_USEING_ID

set BAN_LEVEL=0


rem -------------------
rem IDではじく処理
rem ----------

set CANT_USE_TXT=root_date\service_date\security_txt\cant_use_ID_word.txt
set NOW_ID=%SEARCH_ID%

echo 03

for /f %%a in (%CANT_USE_TXT%) do (
  set /p NOW_ID=IDを照合しています。しばらくお待ちください。< root_date\main_program\Enter.txt
  
  if %NOW_ID%==%%a (
    set /a BAN_LEVEL=%BAN_LEVEL%+1
    ) else (
        echo IDを照合しています。しばらくお待ちください。< root_date\main_program\Enter.txt
      )
   )

cls

rem　----------------
rem　最終確認↓
rem　----------------
 if %BAN_LEVEL%==0 (
    echo 認証が完了しました。お使いいただけます。< root_date\main_program\Enter.txt
    ) else (
        start root_date\main_program\warning_message.bat
    exit 
      )
   

timeout 3

:SUCCESS

cls
goto :ZATUDAN

 
echo 000001



rem 上のものが分岐のコマンドなので、これを書き換えて、保存先を変数に変更し、その変数に書き込みたい保存場所の位置を代入するものを作っていく



:ZATUDAN

rem　雑談用の保存先ファイル名を関数に設定する。




(
    SET /P OTHER_SAVE_FILE_NAME=
)< root_date\log_file_setting\log2_setting.txt



(
    SET /P SAVE_FILE_NAME=
)< root_date\log_file_setting\log1_setting.txt


(
    SET /P SEC_SAY_LOG=
)< root_date\service_date\security_txt\Say_log.txt


(
    SET /P YOUR_USEING_ID=
)< root_date\ID_setting.txt


set CONNECT_SEVER_NAME=あなたは現在「雑談サーバー」に接続しています。


goto :START



:SHIRITORI

rem　雑談用の保存先ファイル名を関数に設定する。



(
    SET /P SAVE_FILE_NAME=
)< root_date\log_file_setting\log2_setting.txt


(
    SET /P OTHER_SAVE_FILE_NAME=
)< root_date\log_file_setting\log1_setting.txt




set CONNECT_SEVER_NAME=あなたは現在「しりとりサーバー」に接続しています。


goto :START




rem ここから設定された保存先に書き込まれるので書き込む場所が分かれる



:START

cls




echo ID設定ファイルに設定されているIDは、%YOUR_USEING_ID%です。
echo 設定されているIDを変える場合は[ID_setting]を起動してくださいの中身を変更してください。

timeout 5 >nul


rem 上でファイル内のIDを読み込むようにする

cls



rem　下で文字出力

echo ------------------------------------------------ >> %SAVE_FILE_NAME%
echo "★通知★このサーバーに参加しました(join_to_this_sever)☆ID[%YOUR_USEING_ID%]">> %SAVE_FILE_NAME%

echo ------------------------------------------------ >>%OTHER_SAVE_FILE_NAME%
echo "▲通知▲別のサーバーに参加しました(join_to_other_sever)△ID[%YOUR_USEING_ID%]">>%OTHER_SAVE_FILE_NAME%














rem 下で今接続しているサーバー名を表示します
echo "%CONNECT_SEVER_NAME%"
rem 下で文字を設定
set USR_INPUT_STR=
rem 入力要求
set /P USR_INPUT_STR="文字列を入力してください: "
rem 入力値echo
echo 入力した文字は %USR_INPUT_STR% です
rem　下で文字出力
echo ------------------------------------------------>> %SAVE_FILE_NAME%
echo ID:「%YOUR_USEING_ID%」>> %SAVE_FILE_NAME%
time /t >>%SAVE_FILE_NAME%
echo [%USR_INPUT_STR%] >> %SAVE_FILE_NAME%



rem --------------------
rem ログファイル書き込み用
rem --------------------

rem ログファイル→%SEC_SAY_LOG%
echo ID:「%YOUR_USEING_ID%」>> %SEC_SAY_LOG%
time /t >>%SEC_SAY_LOG%
echo [%USR_INPUT_STR%] >> %SEC_SAY_LOG%








cls

echo "%CONNECT_SEVER_NAME%"
echo "%USR_INPUT_STR%　を書き込みました。"

timeout 1 >nul

cls
echo "%CONNECT_SEVER_NAME%"
echo "%USR_INPUT_STR%　を書き込みました。"
echo "次の書き込みまで3秒間お待ちください。"
 
timeout 3

:TOP
 
rem ここからループの二度目以降が始まる

cls


rem 初期化
echo "%CONNECT_SEVER_NAME%"
set USR_INPUT_STR=
rem 入力要求
set /P USR_INPUT_STR="再度入力が可能になりました。文字列を入力してください: "
rem 入力値echo
echo 入力した文字は %USR_INPUT_STR% です
rem　下で文字出力
echo ------------------------------------------------>> %SAVE_FILE_NAME%
echo ID:「%YOUR_USEING_ID%」>> %SAVE_FILE_NAME%
time /t >>%SAVE_FILE_NAME%
echo [%USR_INPUT_STR%] >> %SAVE_FILE_NAME%


timeout 1 >nul

cls
echo "%CONNECT_SEVER_NAME%"
echo "%USR_INPUT_STR%　を書き込みました。"



rem --------------------
rem ログファイル書き込み用
rem --------------------

rem ログファイル→%SEC_SAY_LOG%
echo ID:「%YOUR_USEING_ID%」>> %SEC_SAY_LOG%
time /t >>%SEC_SAY_LOG%
echo [%USR_INPUT_STR%] >> %SEC_SAY_LOG%




rem ---------------------------------

timeout 1 >nul

cls
echo "%CONNECT_SEVER_NAME%"
echo "%USR_INPUT_STR%　を書き込みました。"
echo "次の書き込みまで3秒間お待ちください。"
 
timeout 3

goto :TOP