#!/bin/bash

# クローンするリポジトリのURL
REPO_URL=https://github.com/empty240/docker_env/
TARGET_DIR=/var/www

# リポジトリをクローン
git clone $REPO_URL $TARGET_DIR

# 権限を設定
chown -R www-data:www-data $TARGET_DIR

# Composerインストール
cd $TARGET_DIR
composer install --no-dev --optimize-autoloader

# 起動スクリプトを実行
/start.sh
