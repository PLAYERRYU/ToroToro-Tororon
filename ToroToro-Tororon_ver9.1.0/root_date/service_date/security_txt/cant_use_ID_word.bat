rem ユーザーIDに不適切な文章の設定を防ぐ


rem ------------------------root_date\service_date\secrity_txt\cant_use_ID_word



echo off
FOR /F %%A IN (cant_use_ID_word.txt) DO set CONNECT_SEVER_NAME echo %CONNECT_SEVER_NAME% %%A



timeout 5

rem ------------------------