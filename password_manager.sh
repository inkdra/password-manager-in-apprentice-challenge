#!/bin/bash
  
echo "パスワードマネージャーへようこそ！"

read -p "サービス名を入力してください:" serviceName
read -p "ユーザー名を入力してください:" userName
read -p "パスワードを入力してください:" password

echo "Thank you!"

echo " $serviceName : $userName : $password " >> passwordLibrary.txt   
 
