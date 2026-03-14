echo off



set FARST_SAVE=log_file_setting\log1_setting.txt
set SECOND_SAVE=log_file_setting\log2_setting.txt



cls




goto :ZATUDAN

 




rem 上のものが分岐のコマンドなので、これを書き換えて、保存先を変数に変更し、その変数に書き込みたい保存場所の位置を代入するものを作っていく



:ZATUDAN

rem　雑談用の保存先ファイル名を関数に設定する。



(
    SET /P READ_FILE_NAME= 
)< root_date\log_file_setting\log1_setting.txt

timeout 3

set CONNECT_SEVER_NAME=あなたは現在「雑談サーバー」に接続しています。

goto :START



:SHIRITORI



set CONNECT_SEVER_NAME=あなたは現在「しりとりサーバー」に接続しています。


(
    SET /P READ_FILE_NAME= 
)< root_date\log_file_setting\log2_setting.txt

timeout 3

rem　雑談用の保存先ファイル名を関数に設定する。

goto :START




rem ここから設定された保存先に書き込まれるので書き込む場所が分かれる



:START

echo "%CONNECT_SEVER_NAME%"しばらくお待ちください。

timeout 1






:TOP

cls

echo off
echo "%CONNECT_SEVER_NAME%"
echo --------------------------------
 
for /f %%a in (%READ_FILE_NAME%) do (
  echo %%a
)

timeout 3

goto :TOP