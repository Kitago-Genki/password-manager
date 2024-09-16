#!/bin/bash

while true
do

echo "パスワードマネジャーへようこそ！"

echo -n "次の選択肢から入力してください(Add Password/Get Password/Exit)："
read select

if [ "$select" = "Add Password" ]; then
  echo -n "サービス名を入力してください："
  read service_name
  echo "サービス名：$service_name" >> ~/password.txt

  echo -n "ユーザー名を入力してください："
  read user_name
  echo "ユーザー名：$user_name" >> ~/password.txt

  echo -n "パスワードを入力してください："
  read password
  echo "$password" >> ~/password.txt

  echo "パスワードの追加は成功しました。"

elif [ "$select" = "Get Password" ]; then
  echo -n "サービス名を入力してください："
  read service

  if grep -q "$service" ~/password.txt; then
  grep -A 2 "$service" ~/password.txt

  else
    echo "そのサービスは登録されていません。" 
  fi
fi
done

echo "Thank you!"
