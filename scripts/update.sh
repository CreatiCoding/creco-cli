#! /bin/sh
version=$(node -p 'require("./package.json").version.split(".").map((e, i) => i === 2 ? `${parseInt(e) + 1}` : e).join(".")')
git add ./package.json
echo $version
npm version $version || echo "Git working directory 가 비어있지 않아 NPM version이 update 되지 않았습니다."