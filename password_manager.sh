#!/bin/bash
  
echo "パスワードマネージャーへようこそ！"

read -p "次の選択肢から入力してください(Add Password/Get Password/Exit)：" option

while [ "$option" != "Exit" ]; 
do
read -p "次の選択肢から入力してください(Add Password/Get Password/Exit)：" option  
if [ "$option" = "Add Password" ]; then 
   read -p "サービス名を入力してください:" serviceName
   read -p "ユーザー名を入力してください:" userName
   read -p "パスワードを入力してください:" password
   
   echo " $serviceName : $userName : $password " >> passwordLibrary.txt
   echo "パスワードの追加は成功しました。"  

elif [ "$option" = "Get Password" ]; then
   read -p "サービス名を入力してください:" serviceName
   if grep -q $serviceName passwordLibrary.txt; then
      echo grep $serviceName passwordLibrary.txt
   else
      echo "そのサービスは登録されていません。"
   fi
elif [ "$option" = "Exit" ]; then
   echo "Thank you!"
   break  
fi
done  
 
