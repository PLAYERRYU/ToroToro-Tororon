echo off


cls
echo -------------------------------------------------
echo IDの変更を開始してもよろしいですか？
echo -------------------------------------------------
echo ・変更をする場合は半角モードで「Y」を押してください
echo ・変更しない場合は半角モードで「N」を押してください

timeout 1 >nul

choice
if errorlevel 2 goto :END
if errorlevel 1 goto :TOP


:END

exit



goto :TOP



:RE_TOP

echo off
cls


echo 再度入力してください。






:TOP

(
    SET /P OLD_YOUR_USEING_ID=
)< root_date\ID_setting.txt





cls

echo off
rem 初期化
set USR_INPUT_STR=
rem 関数に入力
echo -------------------------------------------------
echo -現在あなたが設定しているID→%OLD_YOUR_USEING_ID%
echo -
set /P USR_INPUT_STR="-変更する新しいIDを打ち込んでください。 "
echo -
echo -----------------------------------------------------------------------
rem 入力値echo
echo -入力した文字は %USR_INPUT_STR% です
echo -------------------------------------------------
set NEW_YOUR_USEING_ID=%USR_INPUT_STR%

cls

rem　下で確認の文字出力
echo -----------------------------------------------------------------------
echo -
echo -[確認]あなたのIDを「%OLD_YOUR_USEING_ID%」から「%NEW_YOUR_USEING_ID%」に変更しますか？
echo -
echo -----------------------------------------------------------------------


echo ・問題がない場合は半角モードで「Y」を押してください
echo ・もう一度入力したい場合は半角モードで「N」を押してください
echo --を入力してください。

timeout 1 >nul

choice
if errorlevel 2 goto :RE_TOP
if errorlevel 1 goto :OK



:OK



echo %NEW_YOUR_USEING_ID%> root_date\ID_setting.txt


echo -------------------------------------------------
echo あなたのIDを「%OLD_YOUR_USEING_ID%」から「%NEW_YOUR_USEING_ID%」に変更しました。
echo このファイルは隠しフォルダの「root_date」の中から変更可能です
echo -------------------------------------------------