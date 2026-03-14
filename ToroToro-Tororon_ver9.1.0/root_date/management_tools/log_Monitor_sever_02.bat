echo off




set CONNECT_SEVER_NAME="ログサーバー2"
set SAVE_FILE_POSITION=log_file_setting\log2_setting.txt

(
    SET /P SAVE_FILE_POSITION= 
)< root_date\log_file_setting\log2_setting.txt


(
    SET /P READ_FILE_NAME= 
)< root_date\log_file_setting\log2_setting.txt


REM 画面表示部分はここから下




:TOP

cls

echo off
echo "%CONNECT_SEVER_NAME%"
echo "サーバーのリンク先[%SAVE_FILE_POSITION%]"
echo -----------------------------------------------------------------------
 
for /f %%a in (%READ_FILE_NAME%) do (
  echo %%a
)

timeout 3

goto :TOP