#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
node build/build.js

# 进入生成的文件夹
cd public

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m "简历更新"
#git push
# 如果发布到 https://<USERNAME>.github.io
#git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
git push -f https://github.com/mrjerryli/mrjerryli.github.io.git/jerry-animating-resume/public/ master
# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
cd -
