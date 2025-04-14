#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

# сборка
npm run build

# переход в каталог сборки
cd dist

# создаем .nojekyll, чтобы обойти обработку Jekyll в GitHub Pages
touch .nojekyll

# если вы публикуете на пользовательский домен
# echo 'www.example.com' > CNAME

# инициализируем git и публикуем
git init
git add -A
git commit -m 'deploy'

# если вы публикуете по адресу https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# если вы публикуете по адресу https://<USERNAME>.github.io/<REPO>
# Используйте следующую команду, заменив YOUR_TOKEN на ваш токен
git push -f https://YOUR_TOKEN@github.com/Eternatus01/GoSurf.git main:gh-pages

cd - 