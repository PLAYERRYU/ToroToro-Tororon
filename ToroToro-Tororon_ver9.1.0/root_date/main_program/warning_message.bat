@echo off


(
    SET /P YOUR_USEING_ID=
)< root_date\ID_setting.txt



(
    SET /P BAN_NUM=
)< root_date\service_date\security_txt\ban_number.txt

set /a BAN_LEVEL_OUTPUT=%BAN_NUM%+1

echo "%BAN_LEVEL_OUTPUT%"> root_date\service_date\security_txt\ban_number.txt
rem ------------------------------------------

echo -------------------------------------
echo -------------------------------------
echo ☆---------------------------------☆
echo ☆--(WARNING)----------------------☆
echo ☆--------(Massage_By_PLAYERRYU)---☆
echo ☆------NOW_BAN_LEVEL_[%BAN_NUM%]--☆
echo -------------------------------------
echo -------------------------------------
echo 使用できないIDが設定されています。
echo 現在設定されている[%YOUR_USEING_ID%]を変更してください。

timeout 10

exit