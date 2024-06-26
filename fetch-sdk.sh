#!/bin/bash

# BACKEND_REPO="git@github.com:gamejoye/github-actions-demo.git"

BACKEND_REPO="https://github.com/gamejoye/nestjs-imjoye.git"
FRONTEND_REPO_DIR="."
TEMP_DIR="tmp"
SDK_DIR="sdk"

git clone $BACKEND_REPO $TEMP_DIR

rm -rf $FRONTEND_REPO_DIR/$SDK_DIR

cp -R $TEMP_DIR/$SDK_DIR $FRONTEND_REPO_DIR/

cd $FRONTEND_REPO_DIR

git add .


git commit -m "chore(sdk): update sdk from server repo"


git push


rm -rf $FRONTEND_REPO_DIR/$TEMP_DIR

echo "SDK更新完成并已提交到前端仓库。"