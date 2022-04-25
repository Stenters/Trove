# !/bin/bash

cd ~/RPG/Trove
obsidian-export . Export

cd Export
sed -i 's/.md)/)/g' **/*.md
sed -i 's/.md#/#/g' **/*.md

cd ..
git add .
git commit -am "updating"
git push
