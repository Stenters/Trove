# !/bin/bash

cd ~/RPG/Trove
obsidian-export . ../Trove-Export

cd ../Trove-Export
sed -i 's/.md)/)/g' **/*.md
sed -i 's/.md#/#/g' **/*.md

git add .
git commit -am "updating"
git push
