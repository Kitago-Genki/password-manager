#!/bin/bash

echo "パスワードマネージャーへようこそ！"

echo -n "サービス名を入力してください："
read service_name
echo "サービス名：$service_name"

echo -n "ユーザー名を入力してください："
read user_name
echo "ユーザー名：$user_name"

echo -n "パスワードを入力してください："
read password
echo "$password"

echo "Thank you!"
